package counter_basic

import (
	"data_view/constant"
	"data_view/utils"
	"database/sql"
	"encoding/json"
	"fmt"
	"strings"
)

type CounterGetData struct {
}

func New() *CounterGetData {
	return &CounterGetData{}
}

func (heatBasicGetData *CounterGetData) GetDataFromDB(db *sql.DB, chartDataParams *utils.ChartDataParams) (result string, err error) {
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

func (heatBasicGetData *CounterGetData) GetDataFromCsv(chartDataParams *utils.ChartDataParams) (result string, err error) {
	return "", nil
}

func FormatRows(rows *sql.Rows, chartDataParams *utils.ChartDataParams) (*map[string]interface{}, error) {
	// 图表所需要的字段和数据库中字段的对应关系
	resultMap := make(map[string]interface{})
	dataField := chartDataParams.Data
	// 返回值列表
	dataResults := make([]map[string]interface{}, 0)
	columns, err := rows.Columns()
	if err != nil {
		return &resultMap, err
	}
	values := make([]sql.RawBytes, len(columns))
	scanArgs := make([]interface{}, len(values))
	for i := range values {
		scanArgs[i] = &values[i]
	}
	for rows.Next() {
		if err := rows.Scan(scanArgs...); err != nil {
			return &resultMap, err
		}
		dataResult := make(map[string]interface{})
		var value string
		for i, col := range values {
			if col == nil {
				value = "NULL"
			} else {
				value = string(col)
			}
			if strings.EqualFold(columns[i], dataField) {
				dataResult["data"] = value
			}
		}
		dataResults = append(dataResults, dataResult)
	}
	fmt.Println(dataResults)
	if len(dataResults) > 0 {
		resultMap = dataResults[0]
		return &resultMap, nil
	} else {
		resultMap["data"] = 0
		return &resultMap, nil
	}
}
