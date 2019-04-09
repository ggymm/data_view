package controllers

import (
	"data_view/constant"
	"data_view/models"
	"data_view/utils"
	"github.com/kataras/iris"
)

func GetChartData(context iris.Context) {
	// 格式化输入信息
	chartDataParams, err := utils.NewChartDataRequest(context)
	if err != nil {
		// 错误的请求
		context.StatusCode(iris.StatusBadRequest)
		// 请求参数错误，不能正确格式化
		_, _ = context.JSON(ApiResourceError(constant.RequestBodyError))
		return
	}
	// 查询数据库
	dataResult, err := models.GetChartData(chartDataParams)
	if err != nil {
		// 程序内部错误
		context.StatusCode(iris.StatusInternalServerError)
		// 查询数据库错误
		_, _ = context.JSON(ApiResourceError(err.Error()))
		return
	}
	context.StatusCode(iris.StatusOK)
	_, _ = context.JSON(ApiResourceSuccess(dataResult))
	return

}
