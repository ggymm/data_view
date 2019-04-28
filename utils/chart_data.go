package utils

import (
	"data_view/constant"
	"errors"
	"github.com/kataras/iris"
	"strings"
)

type ChartDataParams struct {
	DataSourceType string
	ChartType      string
	Database       string
	FileName       string
	Sql            string
	Legend         string
	X              string
	Y              string
	Name           string
	Value          string
	Max            string
	Stack          string
	Data           string
}

func NewChartDataRequest(context iris.Context) (*ChartDataParams, error) {
	dataSourceType := context.URLParamTrim("dataSourceType")
	chartDataParams := ChartDataParams{
		DataSourceType: dataSourceType,
		ChartType:      context.URLParamTrim("chartType"),
		Legend:         context.URLParamTrim("legend"),
		X:              context.URLParamTrim("x"),
		Y:              context.URLParamTrim("y"),
		Name:           context.URLParamTrim("name"),
		Value:          context.URLParamTrim("value"),
		Max:            context.URLParamTrim("max"),
		Stack:          context.URLParamTrim("stack"),
		Data:           context.URLParamTrim("data"),
	}
	if strings.EqualFold(dataSourceType, constant.DataBase) {
		chartDataParams.Database = context.URLParamTrim("database")
		chartDataParams.Sql = context.URLParamTrim("sql")
	} else if strings.EqualFold(dataSourceType, constant.CSV) {
		chartDataParams.FileName = context.URLParamTrim("fileName")
	} else {
		return nil, errors.New(constant.DataSourceTypeError)
	}

	return &chartDataParams, nil

}
