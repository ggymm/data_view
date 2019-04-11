package models

import (
	"data_view/constant"
	"data_view/database"
	"data_view/utils"
	"strings"
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

type ScreenInstanceParams struct {
	InstanceId              uint64
	InstanceTitle           string
	InstanceWidth           uint64
	InstanceHeight          uint64
	InstanceBackgroundColor string
	ChartItems              []map[string]interface{}
	StartIndex              uint64
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
 * 根据ID获取数据（这个方法写的很漂亮）
 * @method GetScreenInstanceById
 * @param [uint64] id [ID]
 * @return [*ScreenInstance] [对象]
 * @return [error] [错误]
 */
func GetScreenInstanceById(id uint64) (*ScreenInstanceParams, error) {
	screenInstance := new(ScreenInstance)
	screenInstanceParams := new(ScreenInstanceParams)
	// 根据ID获取数据
	if err := database.DB.
		Where(ScreenInstanceSelectCondition, id, constant.IsExist).
		First(&screenInstance).Error; err != nil {
		return screenInstanceParams, err
	}
	screenInstanceParams.InstanceId = screenInstance.InstanceId
	screenInstanceParams.InstanceTitle = screenInstance.InstanceTitle
	screenInstanceParams.InstanceWidth = screenInstance.InstanceWidth
	screenInstanceParams.InstanceHeight = screenInstance.InstanceHeight
	screenInstanceParams.InstanceBackgroundColor = screenInstance.InstanceBackgroundColor
	// 根据可视化大屏实例ID获取图表信息列表
	chartItems, err := GetChartItemByInstance(id)
	if err != nil {
		return screenInstanceParams, err
	}
	screenInstanceParams.ChartItems = *chartItems
	if err := screenInstanceParams.setStartIndex(); err != nil {
		return screenInstanceParams, err
	}
	return screenInstanceParams, nil
}

func (screenInstanceParams *ScreenInstanceParams) setStartIndex() error {
	chartItems := screenInstanceParams.ChartItems
	startIndexString := chartItems[0]["i"]
	startIndexStringReplaced := strings.Replace(startIndexString.(string), "chart", "", -1)
	var startIndex uint64
	if err := utils.StrToUint(startIndexStringReplaced, &startIndex); err != nil {
		return err
	}
	screenInstanceParams.StartIndex = startIndex
	return nil
}
