package controllers

import (
	"data_view/constant"
	"data_view/models"
	"data_view/utils"
	"github.com/kataras/iris"
)

func GetScreenInstanceList(context iris.Context) {
	pagingRequest, err := utils.NewPagingRequest(context)
	if err != nil {
		// 错误的请求
		context.StatusCode(iris.StatusBadRequest)
		// 请求参数错误，不能正确格式化
		_, _ = context.JSON(ApiResourceError(constant.RequestBodyError))
		return
	}
	// 查询数据库
	list, count, err := models.GetScreenInstanceList(pagingRequest)
	if err != nil {
		// 错误的请求
		context.StatusCode(iris.StatusBadRequest)
		// 请求参数错误，不能正确格式化
		_, _ = context.JSON(ApiResourceError(err.Error()))
		return
	}
	context.StatusCode(iris.StatusOK)
	_, _ = context.JSON(ApiResourceSuccess(map[string]interface{}{"list": list, "count": count}))
	return
}

func GetScreenInstance(context iris.Context) {
	id, err := context.Params().GetUint64("id")
	if err != nil {
		// 错误的请求
		context.StatusCode(iris.StatusBadRequest)
		// 请求参数错误，不能正确格式化
		_, _ = context.JSON(ApiResourceError(constant.RequestBodyError))
		return
	}
	// 查询数据库
	screenInstance, err := models.GetScreenInstanceById(id)
	if err != nil {
		// 程序内部错误
		context.StatusCode(iris.StatusInternalServerError)
		// 查询数据库错误
		_, _ = context.JSON(ApiResourceError(err.Error()))
		return
	}
	context.StatusCode(iris.StatusOK)
	_, _ = context.JSON(ApiResourceSuccess(screenInstance))
	return
}
