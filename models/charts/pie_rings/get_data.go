package pie_rings

import (
	"data_view/constant"
	"data_view/utils"
	"database/sql"
	"encoding/json"
	"strconv"
	"strings"
)

type PieRingGetData struct {
}

func New() *PieRingGetData {
	return &PieRingGetData{}
}

func (pieRingGetData *PieRingGetData) GetDataFromDB(db *sql.DB, chartDataParams *utils.ChartDataParams) (result string, err error) {
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

func (pieRingGetData *PieRingGetData) GetDataFromCsv(chartDataParams *utils.ChartDataParams) (result string, err error) {
	return "", nil
}

func FormatRows(rows *sql.Rows, chartDataParams *utils.ChartDataParams) (*[]interface{}, error) {
	// 图表所需要的字段和数据库中字段的对应关系
	nameField := chartDataParams.Name
	valueField := chartDataParams.Value
	// 返回值列表
	dataResults := make([]interface{}, 0)
	columns, err := rows.Columns()
	if err != nil {
		return &dataResults, err
	}
	values := make([]sql.RawBytes, len(columns))
	scanArgs := make([]interface{}, len(values))
	for i := range values {
		scanArgs[i] = &values[i]
	}
	for rows.Next() {
		if err := rows.Scan(scanArgs...); err != nil {
			return &dataResults, err
		}
		dataResult := make(map[string]interface{})
		var value string
		for i, col := range values {
			if col == nil {
				value = "NULL"
			} else {
				value = string(col)
			}
			if strings.EqualFold(columns[i], nameField) {
				dataResult["name"] = value
			}
			if strings.EqualFold(columns[i], valueField) {
				other, err := strconv.Atoi(value)
				if err != nil {
					if other < 1 && other > 0 {
						dataResult["value"] = other * 100
						dataResult["other"] = 100 - other*100
					} else if other < 10 && other > 1 {
						dataResult["value"] = other * 10
						dataResult["other"] = 100 - other*10
					} else {
						dataResult["value"] = other
						dataResult["other"] = 100 - other
					}
				} else {
					dataResult["value"] = 100
					dataResult["other"] = 0
				}
			}
		}
		dataResults = append(dataResults, dataResult)
	}
	return &dataResults, nil
}
