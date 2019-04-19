package controllers

import (
	"crypto/md5"
	"data_view/config"
	"data_view/constant"
	"data_view/middleware"
	"data_view/models"
	"encoding/hex"
	"github.com/kataras/iris"
	"io/ioutil"
	"os"
	"path/filepath"
	"strings"
)

func GetImageBgList(context iris.Context) {
	// 查询数据库
	list, err := models.GetImageBgList()
	if err != nil {
		// 错误的请求
		context.StatusCode(iris.StatusBadRequest)
		// 查询数据库错误
		_, _ = context.JSON(ApiResourceError(err.Error()))
		return
	}
	context.StatusCode(iris.StatusOK)
	_, _ = context.JSON(ApiResourceSuccess(list))
	return
}

func SaveImage(context iris.Context) {
	image, imageInfo, err := context.FormFile("background_image")
	if err != nil {
		context.StatusCode(iris.StatusBadRequest)
		_, _ = context.JSON(ApiResourceError(err.Error()))
		return
	}
	defer image.Close()
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
	imageName := imageInfo.Filename
	writeErr := ioutil.WriteFile(savePathWithPrefix+string(filepath.Separator)+imageName, imageByte, 0666)
	if writeErr != nil {
		context.StatusCode(iris.StatusInternalServerError)
		_, _ = context.JSON(ApiResourceError(writeErr.Error()))
		return
	}
	editUser := middleware.GetUser()
	imageSize := imageInfo.Size
	if err := models.SaveImageBg(imageName, savePath, imageSize, editUser); err != nil {
		// 程序内部错误
		context.StatusCode(iris.StatusInternalServerError)
		// 保存数据库错误
		_, _ = context.JSON(ApiResourceError(err.Error()))
		return
	}
	context.StatusCode(iris.StatusOK)
	_, _ = context.JSON(ApiResourceSuccess(nil))
	return
}

func GetImage(context iris.Context) {
	id, err := context.Params().GetUint64("id")
	if err != nil {
		// 错误的请求
		context.StatusCode(iris.StatusBadRequest)
		// 请求参数错误，不能正确格式化
		_, _ = context.JSON(ApiResourceError(constant.RequestBodyError))
		return
	}
	// 查询数据库
	imageBg, err := models.GetImageBgById(id)
	if err != nil {
		// 程序内部错误
		context.StatusCode(iris.StatusInternalServerError)
		// 查询数据库错误
		_, _ = context.JSON(ApiResourceError(err.Error()))
		return
	}
	imagePath := imageBg.ImagePath
	imageName := imageBg.ImageName
	allPath := filepath.FromSlash(config.Config.Get("image.path").(string) + imagePath + string(filepath.Separator) + imageName)
	_ = context.ServeFile(allPath, true)
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
