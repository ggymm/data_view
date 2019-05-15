package histogram_gradient

import (
	"data_view/constant"
	"data_view/utils"
	"database/sql"
	"encoding/json"
	"sort"
	"strconv"
	"strings"
)

type HistogramGradientGetData struct {
}

func New() *HistogramGradientGetData {
	return &HistogramGradientGetData{}
}

//GetDataFromDB
func (histogramGradientGetData *HistogramGradientGetData) GetDataFromDB(db *sql.DB, chartDataParams *utils.ChartDataParams) (result string, err error) {
	sqlString := chartDataParams.Sql
	rows, err := db.Query(sqlString)
	if err != nil {
		return constant.EmptyString, err
	}
	defer rows.Close()
	dataResults, err := FormatRows(rows, chartDataParams)
	if err != nil {
		return constant.EmptyString, err
	}
	resultString, err := json.Marshal(dataResults)
	if err != nil {
		return constant.EmptyString, err
	}
	return string(resultString), nil
}

func (histogramGradientGetData *HistogramGradientGetData) GetDataFromCsv(chartDataParams *utils.ChartDataParams) (result string, err error) {
	return "", nil
}

func FormatRows(rows *sql.Rows, chartDataParams *utils.ChartDataParams) (*map[string]interface{}, error) {
	// 图表所需要的字段和数据库中字段的对应关系
	nameField := chartDataParams.Name
	valueField := chartDataParams.Value

	// 返回值列表
	resultMap := make(map[string]interface{})
	//列名
	columns, err := rows.Columns()
	if err != nil {
		return &resultMap, err
	}
	//读取到的数据库数据切片
	values := make([]sql.RawBytes, len(columns))
	scanArgs := make([]interface{}, len(values))
	for i := range values {
		scanArgs[i] = &values[i]
	}
	dataAxisList := make([]string, 0)
	dataList := make([]int, 0)
	for rows.Next() {
		if err := rows.Scan(scanArgs...); err != nil {
			return &resultMap, err
		}
		var value string
		//获取数据初步规范
		for i, col := range values {
			if col == nil {
				value = "NULL"
			} else {
				value = string(col)
			}
			if strings.EqualFold(columns[i], nameField) {
				dataAxisList = append(dataAxisList, value)
			}
			if strings.EqualFold(columns[i], valueField) {
				yInt, err := strconv.Atoi(value)
				if err == nil {
					dataList = append(dataList, yInt)
				}
			}
		}
	}

	resultMap["dataAxis"] = utils.Duplicate(dataAxisList)
	resultMap["data"] = dataList
	if len(dataList) != 0 {
		sortList := make([]int, len(dataList))
		copy(sortList, dataList)
		sort.Ints(sortList)
		yMax := sortList[len(sortList)-2 : len(sortList)-1]
		resultMap["yMax"] = yMax
	} else {
		resultMap["yMax"] = nil
	}
	return &resultMap, nil
}
