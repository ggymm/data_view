package models

import (
	"data_view/database"
	"encoding/json"
	"fmt"
	"strconv"
)

type ChartItem struct {
	ItemId        uint64 `xorm:"pk autoincr notnull 'item_id'"`
	InstanceId    uint64 `xorm:"bigint(20) 'instance_id'"`
	ItemChartData string `xorm:"text 'item_chart_data'"`
	ItemChartType string `xorm:"varchar(20) 'item_chart_type'"`
	ItemChoose    string `xorm:"varchar(10) 'item_choose'"`
	ItemData      string `xorm:"text 'item_data'"`
	ItemHeight    uint64 `xorm:"bigint(20) 'item_height'"`
	ItemI         string `xorm:"varchar(20) 'item_i'"`
	ItemInterval  string `xorm:"varchar(10) 'item_interval'"`
	ItemOption    string `xorm:"text 'item_option'"`
	ItemRefresh   string `xorm:"varchar(10) 'item_refresh'"`
	ItemWidth     uint64 `xorm:"bigint(20) 'item_width'"`
	ItemX         uint64 `xorm:"bigint(20) 'item_x'"`
	ItemY         uint64 `xorm:"bigint(20) 'item_y'"`
	ItemVersion   uint64 `xorm:"bigint(20) 'item_version'"`
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
func GetChartItemByInstance(instanceId uint64, version uint64) (*[]map[string]interface{}, error) {
	var dataResults = make([]map[string]interface{}, 0)
	querySqlTemp := "select item_i as i, " +
		"item_x as `x`, " +
		"item_y as `y`, " +
		"item_width as `width`, " +
		"item_height as `height`, " +
		"item_chart_type as `chartType`, " +
		"item_choose as `choose`, " +
		"item_refresh as `refresh`, " +
		"item_chart_data as `chartData`, " +
		"item_data as `data`, " +
		"item_interval as `interval`, " +
		"item_option as `option` " +
		"from chart_item where instance_id = %d and version = %d"
	querySql := fmt.Sprintf(querySqlTemp, instanceId, version)
	jsonData, err := database.DB.SQL(querySql).Query().Json()
	if err != nil {
		return &dataResults, err
	}
	fmt.Println(jsonData)
	if err := json.Unmarshal([]byte(jsonData), &dataResults); err != nil {
		return &dataResults, err
	}
	return &dataResults, nil
}

func SaveChartItem(chartItemList []map[string]interface{}, instanceId uint64, version uint64) error {
	for _, chartItemObject := range chartItemList {
		chartItem := new(ChartItem)
		chartItem.InstanceId = instanceId
		chartItem.ItemI = chartItemObject["i"].(string)
		chartItem.ItemX = uint64(chartItemObject["x"].(float64))
		chartItem.ItemY = uint64(chartItemObject["y"].(float64))
		chartItem.ItemWidth = uint64(chartItemObject["width"].(float64))
		chartItem.ItemHeight = uint64(chartItemObject["height"].(float64))
		chartItem.ItemChartType = chartItemObject["chartType"].(string)
		chartItem.ItemChoose = chartItemObject["choose"].(string)
		chartItem.ItemRefresh = chartItemObject["refresh"].(string)
		chartItem.ItemChartData = chartItemObject["chartData"].(string)
		chartItem.ItemData = chartItemObject["data"].(string)
		chartItem.ItemInterval = strconv.FormatFloat(chartItemObject["interval"].(float64), 'f', -1, 64)
		chartItem.ItemOption = chartItemObject["option"].(string)
		chartItem.ItemVersion = version
		if _, err := database.DB.
			Insert(chartItem); err != nil {
			return err
		}
	}
	return nil
}
