package models

import (
	"data_view/constant"
	"data_view/models/charts/counter_basic"
	"data_view/models/charts/histogram_complex"
	"data_view/models/charts/histogram_gradient"
	"data_view/models/charts/histogram_stacking"
	"data_view/models/charts/line_normal"
	"data_view/models/charts/line_stacking"
	"data_view/models/charts/line_stacking_area"
	"data_view/models/charts/pie_normal"
	"data_view/models/charts/pie_rings"
	"data_view/models/charts/plot_bubble"
	"data_view/models/charts/radar_basic"
	"data_view/models/charts/relation_five"
	"data_view/models/charts/relation_four"
	"data_view/models/charts/relation_one"
	"data_view/models/charts/relation_three"
	"data_view/models/charts/relation_two"
	"data_view/models/charts/rotation_list"
	"data_view/utils"
	"database/sql"
	"errors"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"strings"
)

const (
	PlotBubble                  = "plotBubble"
	PlotMap                     = "plotMap"
	LineNormal                  = "lineNormal"
	LineStacking                = "lineStacking"
	LineStackingArea            = "lineStackingArea"
	HistogramGradient           = "histogramGradient"
	HistogramGradientHorizontal = "histogramGradientHorizontal"
	HistogramStacking           = "histogramStacking"
	HistogramComplex            = "histogramComplex"
	MapChina                    = "mapChina"
	PieNormal                   = "pieNormal"
	PieRing                     = "pieRing"
	PieRings                    = "pieRings"
	Pie2D                       = "pie2D"
	PiePercent                  = "piePercent"
	RadarBasic                  = "radarBasic"
	HeatBasic                   = "heatBasic"
	RelationOne                 = "relationOne"
	RelationTwo                 = "relationTwo"
	RelationThree               = "relationThree"
	RelationFour                = "relationFour"
	RelationFive                = "relationFive"
	WordCloud                   = "wordCloud"
	RotationList                = "rotationList"
	Counter                     = "counter"
)

type ChartData interface {
	GetDataFromDB(db *sql.DB, chartDataParams *utils.ChartDataParams) (result string, err error)
	GetDataFromCsv(chartDataParams *utils.ChartDataParams) (result string, err error)
}

func GetChartData(chartDataParams *utils.ChartDataParams) (result string, err error) {
	var chartData ChartData
	// 此处判断图表类型
	chartType := chartDataParams.ChartType
	if strings.EqualFold(chartType, PlotBubble) { // 气泡散点图
		chartData = plot_bubble.New()
	} else if strings.EqualFold(chartType, LineNormal) { // 标准折线图
		chartData = line_normal.New()
	} else if strings.EqualFold(chartType, LineStacking) { // 堆叠折线图
		chartData = line_stacking.New()
	} else if strings.EqualFold(chartType, LineStackingArea) { // 堆叠面积图
		chartData = line_stacking_area.New()
	} else if strings.EqualFold(chartType, HistogramGradient) { // 渐变柱状图
		chartData = histogram_gradient.New()
	} else if strings.EqualFold(chartType, HistogramGradientHorizontal) { // 水平柱状图
		chartData = histogram_gradient.New()
	} else if strings.EqualFold(chartType, HistogramStacking) { // 堆叠柱状图
		chartData = histogram_stacking.New()
	} else if strings.EqualFold(chartType, HistogramComplex) { // 复合柱状图
		chartData = histogram_complex.New()
	} else if strings.EqualFold(chartType, PieNormal) { // 普通饼图
		chartData = pie_normal.New()
	} else if strings.EqualFold(chartType, PieRing) { // 环形饼图
		chartData = pie_normal.New()
	} else if strings.EqualFold(chartType, PieRings) { // 环形饼图列表
		chartData = pie_rings.New()
	} else if strings.EqualFold(chartType, Pie2D) { // 2D饼图
		chartData = pie_normal.New()
	} else if strings.EqualFold(chartType, PiePercent) { // 环形百分比饼图
		chartData = pie_normal.New()
	} else if strings.EqualFold(chartType, RadarBasic) { // 基础雷达图
		chartData = radar_basic.New()
	} else if strings.EqualFold(chartType, RelationOne) { // 关系图1
		chartData = relation_one.New()
	} else if strings.EqualFold(chartType, RelationTwo) { // 关系图2
		chartData = relation_two.New()
	} else if strings.EqualFold(chartType, RelationThree) { // 关系图3
		chartData = relation_three.New()
	} else if strings.EqualFold(chartType, RelationFour) { // 关系图4
		chartData = relation_four.New()
	} else if strings.EqualFold(chartType, RelationFive) { // 关系图5
		chartData = relation_five.New()
	} else if strings.EqualFold(chartType, WordCloud) { // 词云
		chartData = pie_normal.New()
	} else if strings.EqualFold(chartType, RotationList) { // 轮播列表
		chartData = rotation_list.New()
	} else if strings.EqualFold(chartType, Counter) { // 轮播列表
		chartData = counter_basic.New()
	} else {
		return constant.EmptyString, errors.New(constant.ChartTypeError)
	}
	// 此处判断图表数据源类型
	dataSourceType := chartDataParams.DataSourceType
	if strings.EqualFold(dataSourceType, constant.DataBase) {
		// 如果是DB类型的数据源，需要获取好各种数据库连接对象
		databaseString := chartDataParams.Database
		var databaseId uint64
		if err = utils.StrToUint(databaseString, &databaseId); err != nil {
			return constant.EmptyString, err
		}
		dataSource, err := GetDataSourceById(databaseId)
		if err != nil {
			return constant.EmptyString, err
		}
		// 构建数据库访问对象
		dataSourceType := dataSource.DataSourceType
		var db *sql.DB
		if strings.EqualFold(dataSourceType, constant.MySQL) {
			urlTemplate := "%s:%s@tcp(%s:%d)/%s?charset=utf8&multiStatements=true"
			url := fmt.Sprintf(urlTemplate,
				dataSource.DataSourceUsername,
				dataSource.DataSourcePassword,
				dataSource.DataSourceIp,
				dataSource.DataSourcePort,
				dataSource.DataSourceDatabaseName)
			db, err = sql.Open("mysql", url)
			if err != nil {
				return constant.EmptyString, err
			}
			defer db.Close()
		} else if strings.EqualFold(dataSourceType, constant.Oracle) {
		} else if strings.EqualFold(dataSourceType, constant.SQLServer) {
		} else if strings.EqualFold(dataSourceType, constant.DB2) {
		} else {
			return constant.EmptyString, errors.New(constant.DataSourceTypeError)
		}
		dataResult, err := chartData.GetDataFromDB(db, chartDataParams)
		if err != nil {
			return dataResult, err
		}
		return dataResult, nil
	} else if strings.EqualFold(dataSourceType, constant.CSV) {
		dataResult, err := chartData.GetDataFromCsv(chartDataParams)
		if err != nil {
			return dataResult, err
		}
		return dataResult, nil
	} else {
		return constant.EmptyString, errors.New(constant.DataSourceTypeError)
	}
}
