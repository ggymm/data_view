package rotation_list

import (
	"data_view/constant"
	"data_view/utils"
	"database/sql"
	"encoding/json"
)

type RotationListGetData struct {
}

func New() *RotationListGetData {
	return &RotationListGetData{}
}

//GetDataFromDB
func (rotationListGetData *RotationListGetData) GetDataFromDB(db *sql.DB, chartDataParams *utils.ChartDataParams) (result string, err error) {
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

func (rotationListGetData *RotationListGetData) GetDataFromCsv(chartDataParams *utils.ChartDataParams) (result string, err error) {
	return "", nil
}

func FormatRows(rows *sql.Rows, chartDataParams *utils.ChartDataParams) (*map[string]interface{}, error) {
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
			tempResultMap[columns[i]] = value
		}
		tempResults = append(tempResults, tempResultMap)
	}
	//规范数据
	//去重后的结果
	dataList := make([]interface{}, 0)
	columnsList := make([]string, 0)
	for _, tempResult := range tempResults {
		valueList := make([]string, 0)
		for key, value := range tempResult {
			if len(columnsList) != len(tempResult) {
				columnsList = append(columnsList, key)
			}
			valueList = append(valueList, value)
		}
		dataList = append(dataList, valueList)
	}
	//拼接最后结果
	resultMap["column"] = columnsList
	resultMap["value"] = dataList
	return &resultMap, nil
}
