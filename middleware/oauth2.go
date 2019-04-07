package middleware

import (
	"github.com/kataras/iris"
)

func CheckToken(context iris.Context) {
	// 请求放行
	context.Next()
}

func GetUser() uint64 {
	return 1
}
