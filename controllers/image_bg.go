package controllers

import (
	"crypto/md5"
	"data_view/config"
	"encoding/hex"
	"github.com/kataras/iris"
	"io/ioutil"
	"os"
	"path/filepath"
	"strings"
)

func SaveImage(context iris.Context) {
	image, imageInfo, err := context.FormFile("background_image")
	if err != nil {
		context.StatusCode(iris.StatusBadRequest)
		_, _ = context.JSON(ApiResourceError(err.Error()))
		return
	}
	imageByte, readErr := ioutil.ReadAll(image)
	if readErr != nil {
		context.StatusCode(iris.StatusInternalServerError)
		_, _ = context.JSON(ApiResourceError(readErr.Error()))
		return
	}
	newMD5Str := []rune(md5Bytes(imageByte))
	layerLength := len(newMD5Str) / 4
	savePath := strings.Join([]string{string(newMD5Str[:layerLength]),
		string(newMD5Str[layerLength : layerLength*2]),
		string(newMD5Str[layerLength*2 : layerLength*3]),
		string(newMD5Str[layerLength*3 : layerLength*4])}, string(filepath.Separator))
	savePathWithPrefix := filepath.FromSlash(config.Config.Get("image.path").(string) + savePath)
	if !isExist(savePathWithPrefix) {
		if err := os.MkdirAll(savePathWithPrefix, os.ModePerm); err != nil {
			context.StatusCode(iris.StatusInternalServerError)
			_, _ = context.JSON(ApiResourceError(err.Error()))
			return
		}
	}
	writeErr := ioutil.WriteFile(savePathWithPrefix+string(filepath.Separator)+imageInfo.Filename, imageByte, 0666)
	if writeErr != nil {
		context.StatusCode(iris.StatusInternalServerError)
		_, _ = context.JSON(ApiResourceError(writeErr.Error()))
		return
	}
	defer image.Close()
	context.StatusCode(iris.StatusOK)
	_, _ = context.JSON(ApiResourceSuccess(nil))
	return
}

func GetImage(context iris.Context) {
	_ = context.ServeFile("C:/Users/gongym/Pictures/5ad8754dd6199a368334ecc7f80af646.jpg", true)
	return
}

func md5Bytes(s []byte) string {
	ret := md5.Sum(s)
	return hex.EncodeToString(ret[:])
}

func isExist(path string) bool {
	_, err := os.Stat(path)
	return err == nil || os.IsExist(err)
}
