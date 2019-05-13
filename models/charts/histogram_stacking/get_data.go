package histogram_stacking

import (
	"data_view/constant"
	"data_view/utils"
	"database/sql"
	"encoding/json"
	"strings"
)

type HistogramStackingGetData struct {
}

func New() *HistogramStackingGetData {
	return &HistogramStackingGetData{}
}

func (histogramStackingGetData *HistogramStackingGetData) GetDataFromDB(db *sql.DB, chartDataParams *utils.ChartDataParams) (result string, err error) {
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
func (histogramStackingGetData *HistogramStackingGetData) GetDataFromCsv(chartDataParams *utils.ChartDataParams) (result string, err error) {
	return "", nil
}

func FormatRows(rows *sql.Rows, chartDataParams *utils.ChartDataParams) (*[]interface{}, error) {
	// 图表所需要的字段和数据库中字段的对应关系
	legendField := chartDataParams.Legend
	xField := chartDataParams.X
	yFiled := chartDataParams.Y
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
	legendList := make([]string, 0)
	tempResults := make([]map[string]string, 0)
	for rows.Next() {
		if err := rows.Scan(scanArgs...); err != nil {
			return &dataResults, err
		}
		tempResult := make(map[string]string)
		var value string
		for i, col := range values {
			if col == nil {
				value = "NULL"
			} else {
				value = string(col)
			}
			if strings.EqualFold(columns[i], "id") {
				tempResult["id"] = value
			}
			if strings.EqualFold(columns[i], legendField) {
				legendList = append(legendList, value)
				tempResult["legend"] = value
			}
			if strings.EqualFold(columns[i], yFiled) {
				tempResult["y"] = value
			}
			if strings.EqualFold(columns[i], xField) {
				tempResult["x"] = value
			}
		}
		tempResults = append(tempResults, tempResult)
	}
	// 分类信息处理(第一列)
	categoryMap := make(map[string]string)
	categoryList := make([]interface{}, 0)
	categoryList = append(categoryList, "product")
	legendList = utils.Duplicate(legendList)
	categoryMap["product"] = ""
	for _, legend := range legendList {
		categoryList = append(categoryList, legend)
		categoryMap[legend] = ""
	}
	dataResults = append(dataResults, categoryList)
	// 后续数据处理
	otherMap := make(map[string][]string)
	// 为了遍历map时顺序不乱
	otherList := make([]string, 0)
	for _, tempResult := range tempResults {
		other, ok := otherMap[tempResult["x"]]
		if ok {
			other = append(other, tempResult["y"])
			otherMap[tempResult["x"]] = other
		} else {
			otherList = append(otherList, tempResult["x"])
			otherMap[tempResult["x"]] = append(otherMap[tempResult["x"]], tempResult["y"])
		}
	}
	// 格式化结果数据
	for _, key := range otherList {
		valueList := make([]string, 0)
		valueList = append(valueList, key)
		for _, data := range otherMap[key] {
			valueList = append(valueList, data)
		}
		dataResults = append(dataResults, valueList)
	}
	return &dataResults, nil
}
