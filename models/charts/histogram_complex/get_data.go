package histogram_complex

import (
	"data_view/constant"
	"data_view/utils"
	"database/sql"
	"encoding/json"
	"strconv"
	"strings"
)

type HistogramComplexGetData struct {
}

func New() *HistogramComplexGetData {
	return &HistogramComplexGetData{}
}

//GetDataFromDB
func (histogramComplexGetData *HistogramComplexGetData) GetDataFromDB(db *sql.DB, chartDataParams *utils.ChartDataParams) (result string, err error) {
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

func (histogramComplexGetData *HistogramComplexGetData) GetDataFromCsv(chartDataParams *utils.ChartDataParams) (result string, err error) {
	return "", nil
}

func FormatRows(rows *sql.Rows, chartDataParams *utils.ChartDataParams) (*map[string]interface{}, error) {
	// 图表所需要的字段和数据库中字段的对应关系
	xField := chartDataParams.X
	nameField := chartDataParams.Name
	valueField := chartDataParams.Value

	// 返回值列表
	resultMap := make(map[string]interface{})
	tempResults := make([]map[string]string, 0)
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
	legendList := make([]string, 0)
	for rows.Next() {
		if err := rows.Scan(scanArgs...); err != nil {
			return &resultMap, err
		}
		var value string
		//获取数据初步规范
		tempResultMap := make(map[string]string)
		for i, col := range values {
			if col == nil {
				value = "NULL"
			} else {
				value = string(col)
			}
			if strings.EqualFold(columns[i], xField) {
				tempResultMap[xField] = value
			}
			if strings.EqualFold(columns[i], nameField) {
				tempResultMap[nameField] = value
				legendList = append(legendList, value)
			}
			if strings.EqualFold(columns[i], valueField) {
				tempResultMap[valueField] = value
			}
		}
		tempResults = append(tempResults, tempResultMap)
	}
	//规范数据
	valueList := make([]interface{}, 0)
	for _, legend := range utils.Duplicate(legendList) {
		valueMap := make(map[string]interface{})
		xResultList := make([]string, 0)
		yResultList := make([]int, 0)
		for _, tempResult := range tempResults {
			if strings.EqualFold(legend, tempResult[nameField]) {
				yInt, err := strconv.Atoi(tempResult[valueField])
				if err == nil {
					yResultList = append(yResultList, yInt)
					xResultList = append(xResultList, tempResult[xField])
				}
			}
		}
		valueMap["name"] = legend
		valueMap["x"] = xResultList
		valueMap["y"] = yResultList
		valueList = append(valueList, valueMap)
	}
	resultMap["legend"] = utils.Duplicate(legendList)
	resultMap["value"] = valueList
	return &resultMap, nil
}
