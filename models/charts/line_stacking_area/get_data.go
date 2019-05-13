package line_stacking_area

import (
	"data_view/constant"
	"data_view/utils"
	"database/sql"
	"encoding/json"
	"strconv"
	"strings"
)

type LineStackingAreaGetData struct {
}

func New() *LineStackingAreaGetData {
	return &LineStackingAreaGetData{}
}

//GetDataFromDB
func (lineStackingAreaGetData *LineStackingAreaGetData) GetDataFromDB(db *sql.DB, chartDataParams *utils.ChartDataParams) (result string, err error) {
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

func (lineStackingAreaGetData *LineStackingAreaGetData) GetDataFromCsv(chartDataParams *utils.ChartDataParams) (result string, err error) {
	return "", nil
}

func FormatRows(rows *sql.Rows, chartDataParams *utils.ChartDataParams) (*map[string]interface{}, error) {
	// 图表所需要的字段和数据库中字段的对应关系
	xField := chartDataParams.X
	yField := chartDataParams.Y

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
				tempResultMap["x"] = value
			}
			if strings.EqualFold(columns[i], yField) {
				tempResultMap["y"] = value
			}
			if strings.EqualFold(columns[i], "name") {
				legendList = append(legendList, value)
				tempResultMap["legend"] = value
			}
		}
		tempResults = append(tempResults, tempResultMap)
	}
	//规范数据
	yList := make([]interface{}, 0)
	xList := make([]interface{}, 0)
	i := 0
	for _, legend := range utils.Duplicate(legendList) {
		yMap := make(map[string]interface{})
		valueResultList := make([]int, 0)
		for _, tempResult := range tempResults {
			if strings.EqualFold(legend, tempResult["legend"]) {
				if 0 == i {
					xList = append(xList, tempResult["x"])
				}
				yInt, err := strconv.Atoi(tempResult["y"])
				if err == nil {
					valueResultList = append(valueResultList, yInt)
				}
			}
		}
		i++
		yMap["name"] = legend
		yMap["value"] = valueResultList
		yList = append(yList, yMap)
	}
	resultMap["legend"] = utils.Duplicate(legendList)
	resultMap["y"] = yList
	resultMap["x"] = xList
	return &resultMap, nil
}
