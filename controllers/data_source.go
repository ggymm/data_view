package controllers

import (
	"data_view/constant"
	"data_view/middleware"
	"data_view/models"
	"data_view/utils"
	"github.com/go-sql-driver/mysql"
	"github.com/kataras/iris"
)

func GetDataSourcePage(context iris.Context) {
	pagingRequest, err := utils.NewPagingRequest(context)
	if err != nil {
		// 错误的请求
		context.StatusCode(iris.StatusBadRequest)
		// 请求参数错误，不能正确格式化
		_, _ = context.JSON(ApiResourceError(constant.RequestBodyError))
		return
	}
	// 查询数据库
	list, count, err := models.GetDataSourcePage(pagingRequest)
	if err != nil {
		// 错误的请求
		context.StatusCode(iris.StatusBadRequest)
		// 查询数据库错误
		_, _ = context.JSON(ApiResourceError(err.Error()))
		return
	}
	context.StatusCode(iris.StatusOK)
	_, _ = context.JSON(ApiResourceSuccess(map[string]interface{}{"list": list, "count": count}))
	return
}

//noinspection GoUnusedParameter
func GetDataSourceList(context iris.Context) {
	// 查询数据库
	list, err := models.GetDataSourceList()
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

func GetDataSource(context iris.Context) {
	id, err := context.Params().GetUint64("id")
	if err != nil {
		// 错误的请求
		context.StatusCode(iris.StatusBadRequest)
		// 请求参数错误，不能正确格式化
		_, _ = context.JSON(ApiResourceError(constant.RequestBodyError))
		return
	}
	// 查询数据库
	etl, err := models.GetDataSourceById(id)
	if err != nil {
		// 程序内部错误
		context.StatusCode(iris.StatusInternalServerError)
		// 查询数据库错误
		_, _ = context.JSON(ApiResourceError(err.Error()))
		return
	}
	context.StatusCode(iris.StatusOK)
	_, _ = context.JSON(ApiResourceSuccess(etl))
	return
}

func DeleteDataSource(context iris.Context) {
	id, err := context.Params().GetUint64("id")
	if err != nil {
		// 错误的请求
		context.StatusCode(iris.StatusBadRequest)
		// 请求参数错误，不能正确格式化
		_, _ = context.JSON(ApiResourceError(constant.RequestBodyError))
		return
	}
	// 更新数据库
	if err := models.DeleteDataSourceById(id); err != nil {
		// 错误的请求
		context.StatusCode(iris.StatusInternalServerError)
		// 更新数据库错误
		_, _ = context.JSON(ApiResourceError(err.Error()))
		return
	}
	context.StatusCode(iris.StatusOK)
	_, _ = context.JSON(ApiResourceSuccess(nil))
	return
}

func TestConnection(context iris.Context) {
	// 格式化输入信息
	dataSourceJson := new(models.DataSourceJson)
	if err := context.ReadJSON(&dataSourceJson); err != nil {
		// 错误的请求
		context.StatusCode(iris.StatusBadRequest)
		// 请求参数错误，不能格式化成结构体
		_, _ = context.JSON(ApiResourceError(constant.RequestBodyError))
		return
	}
	// 校验结构体参数是否符合规则
	if err := validate.Struct(dataSourceJson); err != nil {
		// 错误的请求
		context.StatusCode(iris.StatusBadRequest)
		// 参数不符合规范
		_, _ = context.JSON(ApiResourceError(validatorErrorData(err)))
		return
	}
	if err := models.TestConnection(dataSourceJson); err != nil {
		// 请求正确，但是校验错误
		context.StatusCode(iris.StatusOK)
		// 注意此处的错误类型
		switch err.(type) {
		case *mysql.MySQLError:
			_, _ = context.JSON(ApiResourceError(err.(*mysql.MySQLError).Message))
		default:
			_, _ = context.JSON(ApiResourceError(err.Error()))
		}
		return

	}
	context.StatusCode(iris.StatusOK)
	_, _ = context.JSON(ApiResourceSuccess(nil))
	return
}

func SaveDataSource(context iris.Context) {
	// 格式化输入信息
	dataSourceJson := new(models.DataSourceJson)
	if err := context.ReadJSON(&dataSourceJson); err != nil {
		// 错误的请求
		context.StatusCode(iris.StatusBadRequest)
		// 请求参数错误，不能格式化成结构体
		_, _ = context.JSON(ApiResourceError(constant.RequestBodyError))
		return
	}
	// 校验结构体参数是否符合规则
	if err := validate.Struct(dataSourceJson); err != nil {
		// 错误的请求
		context.StatusCode(iris.StatusBadRequest)
		// 参数不符合规范
		_, _ = context.JSON(ApiResourceError(validatorErrorData(err)))
		return
	}
	editUser := middleware.GetUser()
	if err := models.SaveDataSource(dataSourceJson, editUser); err != nil {
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

func UpdateDataSource(context iris.Context) {
	id, err := context.Params().GetUint64("id")
	if err != nil {
		// 错误的请求
		context.StatusCode(iris.StatusBadRequest)
		// 请求参数错误，不能正确格式化
		_, _ = context.JSON(ApiResourceError(constant.RequestBodyError))
		return
	}
	// 格式化输入信息
	dataSourceJson := new(models.DataSourceJson)
	if err := context.ReadJSON(&dataSourceJson); err != nil {
		// 错误的请求
		context.StatusCode(iris.StatusBadRequest)
		// 请求参数错误，不能格式化成结构体
		_, _ = context.JSON(ApiResourceError(constant.RequestBodyError))
		return
	}
	// 校验结构体参数是否符合规则
	if err := validate.Struct(dataSourceJson); err != nil {
		// 错误的请求
		context.StatusCode(iris.StatusBadRequest)
		// 参数不符合规范
		_, _ = context.JSON(ApiResourceError(validatorErrorData(err)))
		return
	}
	editUser := middleware.GetUser()
	if err := models.UpdateDataSource(dataSourceJson, id, editUser); err != nil {
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
