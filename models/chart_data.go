package models

import (
	"data_view/constant"
	"data_view/models/charts/pie_normal"
	"data_view/models/charts/pie_rings"
	"data_view/models/charts/plot_bubble"
	"data_view/models/charts/radar_basic"
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
)

type ChartData interface {
	GetDataFromDB(db *sql.DB, chartDataParams *utils.ChartDataParams) (result string, err error)
	GetDataFromCsv(chartDataParams *utils.ChartDataParams) (result string, err error)
}

func GetChartData(chartDataParams *utils.ChartDataParams) (result string, err error) {
	var chartData ChartData
	// 此处判断图表类型
	chartType := chartDataParams.ChartType
	if strings.EqualFold(chartType, PlotBubble) { //气泡散点图
		chartData = plot_bubble.New()
	} else if strings.EqualFold(chartType, PieNormal) {
		chartData = pie_normal.New()
	} else if strings.EqualFold(chartType, PieRing) { //环形饼图
		chartData = pie_normal.New()
	} else if strings.EqualFold(chartType, PieRings) { //环形饼图列表
		chartData = pie_rings.New()
	} else if strings.EqualFold(chartType, Pie2D) { //2D饼图
		chartData = pie_normal.New()
	} else if strings.EqualFold(chartType, RadarBasic) { //基础雷达图
		chartData = radar_basic.New()
	} else if strings.EqualFold(chartType, WordCloud) { //词云
		chartData = pie_normal.New()
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
