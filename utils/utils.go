package utils

import (
	"math/rand"
	"strconv"
	"strings"
)

func StrToUint(strNumber string, value interface{}) (err error) {
	var number interface{}
	number, err = strconv.ParseUint(strNumber, 10, 64)
	switch v := number.(type) {
	case uint64:
		switch d := value.(type) {
		case *uint64:
			*d = v
		case *uint:
			*d = uint(v)
		case *uint16:
			*d = uint16(v)
		case *uint32:
			*d = uint32(v)
		case *uint8:
			*d = uint8(v)
		}
	}
	return
}

/**
去除重复数据
*/
func Duplicate(arr []string) (newArr []string) {
	newArr = make([]string, 0)
	for i := 0; i < len(arr); i++ {
		repeat := false
		for j := i + 1; j < len(arr); j++ {
			if arr[i] == arr[j] {
				repeat = true
				break
			}
		}
		if !repeat {
			newArr = append(newArr, arr[i])
		}
	}
	return
}

/*
生成随机颜色
*/
func CreateColor() string {
	red := strings.ToUpper(strconv.FormatInt(int64(rand.Intn(256)), 16))
	if len(red) == 1 {
		red = "0" + red
	}
	blue := strings.ToUpper(strconv.FormatInt(int64(rand.Intn(256)), 16))
	if len(blue) == 1 {
		blue = "0" + blue
	}
	green := strings.ToUpper(strconv.FormatInt(int64(rand.Intn(256)), 16))
	if len(green) == 1 {
		green = "0" + green
	}
	return "#" + red + green + blue
}

/**
判断元素在数组中出现的次数
*/
func CountInArray(a string, b []string) int {
	var result int = 0
	for i := 0; i < len(b); i++ {
		if a == b[i] {
			result++
		}
	}
	return result
}

/**
判断元素在数组中的位置
*/
func GetIndexInArray(a string, b []string) int {
	var result int = 0
	for i := 0; i < len(b); i++ {
		if a == b[i] {
			result = i
			break
		}
	}
	return result
}

/**
判断元素在数组中是否存在
*/
func IsExitInArray(a string, b []string) bool {
	var result bool = false
	for i := 0; i < len(b); i++ {
		if a == b[i] {
			result = true
			break
		}
	}
	return result
}
