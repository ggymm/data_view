package models

import (
	"data_view/database"
	"data_view/utils"
)

type ChartItem struct {
	ItemId        uint64 `gorm:"primary_key bigint(20) NOT NULL AUTO_INCREMENT"`
	InstanceId    uint64 `gorm:"bigint(20) DEFAULT NULL"`
	ItemChartData string `gorm:"text"`
	ItemChartType string `gorm:"varchar(20) DEFAULT NULL"`
	ItemChoose    string `gorm:"varchar(10) DEFAULT NULL"`
	ItemData      string `gorm:"text"`
	ItemHeight    uint64 `gorm:"bigint(20) DEFAULT NULL"`
	ItemI         string `gorm:"primary_key varchar(20) DEFAULT NULL"`
	ItemInterval  string `gorm:"varchar(10) DEFAULT NULL"`
	ItemOption    string `gorm:"text"`
	ItemRefresh   string `gorm:"varchar(10) DEFAULT NULL"`
	ItemWidth     uint64 `gorm:"bigint(20) DEFAULT NULL"`
	ItemX         uint64 `gorm:"bigint(20) DEFAULT NULL"`
	ItemY         uint64 `gorm:"bigint(20) DEFAULT NULL"`
}

/**
 * 获取分页列表
 * @method GetChartItemList
 * @param [utils.PagingRequest] paging [分页查询条件]
 * @return [[]*ChartItem] [列表]
 * @return [int64] [总数]
 * @return [error] [错误]
 */
func GetChartItemList(paging *utils.PagingRequest) ([]*ChartItem, int64, error) {
	var list = make([]*ChartItem, 0)
	var count int64 = 0
	// 获取查询列表
	if err := database.DB.
		Where(paging.Search).
		Offset(paging.Offset).
		Limit(paging.Limit).
		Find(&list).Error; err != nil {
		return list, count, err
	}
	// 获取总数
	if err := database.DB.
		Model(&ChartItem{}).
		Where(paging.Search).
		Count(&count).Error; err != nil {
		return list, count, err
	}
	return list, count, nil
}

/**
 * 根据ID获取数据
 * @method GetChartItemById
 * @param [uint64] id [ID]
 * @return [*ChartItem] [对象]
 * @return [error] [错误]
 */
func GetChartItemById(id uint64) (*ChartItem, error) {
	object := new(ChartItem)
	// 根据ID获取数据
	if err := database.DB.
		Where("item_id = ?", id).
		First(&object).Error; err != nil {
		return object, err
	}
	return object, nil
}
