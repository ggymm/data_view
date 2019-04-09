package models

import (
	"data_view/constant"
	"data_view/database"
	"data_view/utils"
)

type ScreenInstance struct {
	InstanceId              uint64 `gorm:"primary_key bigint(20) NOT NULL AUTO_INCREMENT"`
	AddTime                 Time   `gorm:"datetime DEFAULT NULL"`
	AddUser                 uint64 `gorm:"bigint(20) DEFAULT NULL"`
	DelFlag                 uint   `gorm:"int(1) DEFAULT NULL"`
	EditTime                Time   `gorm:"datetime DEFAULT NULL"`
	EditUser                uint64 `gorm:"bigint(20) DEFAULT NULL"`
	InstanceBackgroundColor string `gorm:"varchar(20) DEFAULT NULL"`
	InstanceBackgroundImg   string `gorm:"varchar(200) DEFAULT NULL"`
	InstanceHeight          uint64 `gorm:"bigint(20) DEFAULT NULL"`
	InstanceTitle           string `gorm:"varchar(30) DEFAULT NULL"`
	InstanceViewImg         string `gorm:"mediumtext"`
	InstanceWidth           uint64 `gorm:"bigint(20) DEFAULT NULL"`
}

const ScreenInstanceSelectCondition = "instance_id = ? AND del_flag = ?"

/**
 * 获取分页列表
 * @method GetScreenInstanceList
 * @param [utils.PagingRequest] paging [分页查询条件]
 * @return [[]*ScreenInstance] [列表]
 * @return [int64] [总数]
 * @return [error] [错误]
 */
func GetScreenInstanceList(paging *utils.PagingRequest) ([]*ScreenInstance, int64, error) {
	var list = make([]*ScreenInstance, 0)
	var count int64 = 0
	// 获取查询列表
	if err := database.DB.
		Where(paging.Search).
		Offset(paging.Offset).
		Limit(paging.Limit).
		Order(constant.DefaultOrder).
		Find(&list).Error; err != nil {
		return list, count, err
	}
	// 获取总数
	if err := database.DB.
		Model(&ScreenInstance{}).
		Where(paging.Search).
		Count(&count).Error; err != nil {
		return list, count, err
	}
	return list, count, nil
}

/**
 * 根据ID获取数据
 * @method GetScreenInstanceById
 * @param [uint64] id [ID]
 * @return [*ScreenInstance] [对象]
 * @return [error] [错误]
 */
func GetScreenInstanceById(id uint64) (*ScreenInstance, error) {
	object := new(ScreenInstance)
	// 根据ID获取数据
	if err := database.DB.
		Where(ScreenInstanceSelectCondition, id, constant.IsExist).
		First(&object).Error; err != nil {
		return object, err
	}
	return object, nil
}
