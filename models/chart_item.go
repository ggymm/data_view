package models

import (
	"data_view/database"
	"database/sql"
	"fmt"
)

type ChartItem struct {
	ItemId        uint64 `gorm:"primary_key bigint(20) NOT NULL AUTO_INCREMENT"`
	InstanceId    uint64 `gorm:"bigint(20) DEFAULT NULL"`
	ItemChartData string `gorm:"text"`
	ItemChartType string `gorm:"varchar(20) DEFAULT NULL"`
	ItemChoose    string `gorm:"varchar(10) DEFAULT NULL"`
	ItemData      string `gorm:"text"`
	ItemHeight    uint64 `gorm:"bigint(20) DEFAULT NULL"`
	ItemI         string `gorm:"varchar(20) DEFAULT NULL"`
	ItemInterval  string `gorm:"varchar(10) DEFAULT NULL"`
	ItemOption    string `gorm:"text"`
	ItemRefresh   string `gorm:"varchar(10) DEFAULT NULL"`
	ItemWidth     uint64 `gorm:"bigint(20) DEFAULT NULL"`
	ItemX         uint64 `gorm:"bigint(20) DEFAULT NULL"`
	ItemY         uint64 `gorm:"bigint(20) DEFAULT NULL"`
}

const Order = "item_i desc"

/**
 * 根据实例ID获取图表列表
 * @method GetChartItemByInstance、
 * @param [uint64] instanceId [实例ID]
 * @return [[]map[string]interface{}] [列表]
 * @return [error] [错误]
 */
//noinspection GoNilness
func GetChartItemByInstance(instanceId uint64) (*[]map[string]interface{}, error) {
	var dataResults = make([]map[string]interface{}, 0)
	// 获取查询列表
	rows, err := database.DB.
		Table("chart_item").
		Select("item_i as i, "+
			"item_x as `x`, "+
			"item_y as `y`, "+
			"item_width as `width`, "+
			"item_height as `height`, "+
			"item_chart_type as `chartType`, "+
			"item_choose as `choose`, "+
			"item_refresh as `refresh`, "+
			"item_chart_data as `chartData`, "+
			"item_data as `data`, "+
			"item_interval as `interval`, "+
			"item_option as `option` ").Where("instance_id = ?", instanceId).Order(Order).Rows()
	defer rows.Close()
	if err != nil {
		return &dataResults, err
	}
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
			dataResult[columns[i]] = value
		}
		dataResults = append(dataResults, dataResult)
	}
	return &dataResults, nil
}

func SaveChartItem(chartItemList []map[string]interface{}) error {
	for _, chartItemObject := range chartItemList {
		chartItem := new(ChartItem)
		chartItem.ItemI = chartItemObject["i"].(string)
		fmt.Println(chartItem)
	}
	return nil
}
