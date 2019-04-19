package models

import (
	"data_view/constant"
	"data_view/database"
	"data_view/utils"
	"strings"
	"time"
)

type ScreenInstance struct {
	InstanceId              uint64    `xorm:"pk autoincr notnull 'instance_id'"`
	AddTime                 time.Time `xorm:"created"`
	AddUser                 uint64    `xorm:"bigint(20)"`
	DelFlag                 uint      `xorm:"int(1)"`
	EditTime                time.Time `xorm:"updated"`
	EditUser                uint64    `xorm:"bigint(20)"`
	InstanceBackgroundColor string    `xorm:"varchar(20) 'instance_background_color'"`
	InstanceBackgroundImg   uint64    `xorm:"bigint(20) 'instance_background_img'"`
	InstanceHeight          uint64    `xorm:"bigint(20) 'instance_height'"`
	InstanceTitle           string    `xorm:"varchar(30) 'instance_title'"`
	InstanceViewImg         string    `xorm:"mediumtext 'instance_view_img'"`
	InstanceWidth           uint64    `xorm:"bigint(20) 'instance_width'"`
	InstanceVersion         uint64    `xorm:"bigint(20) 'instance_version'"`
}

type ScreenInstanceJson struct {
	InstanceBackgroundColor string                   `json:"InstanceBackgroundColor"`
	InstanceBackgroundImg   uint64                   `json:"InstanceBackgroundImg"`
	InstanceHeight          uint64                   `json:"InstanceHeight" validate:"required"`
	InstanceTitle           string                   `json:"InstanceTitle"`
	InstanceViewImg         string                   `json:"InstanceViewImg" validate:"required"`
	InstanceWidth           uint64                   `json:"InstanceWidth" validate:"required"`
	InstanceVersion         uint64                   `json:"InstanceVersion" validate:"required"`
	ChartItems              []map[string]interface{} `json:"ChartItems" validate:"required"`
}

type ScreenInstanceParams struct {
	InstanceId              uint64
	InstanceTitle           string
	InstanceWidth           uint64
	InstanceHeight          uint64
	InstanceBackgroundColor string
	InstanceBackgroundImg   uint64
	InstanceVersion         uint64
	ChartItems              []map[string]interface{}
	StartIndex              uint64
}

func (screenInstanceParams *ScreenInstanceParams) setStartIndex() error {
	chartItems := screenInstanceParams.ChartItems
	startIndexString := chartItems[0]["i"]
	startIndexStringReplaced := strings.Replace(startIndexString.(string), "chart", "", -1)
	var startIndex uint64
	if err := utils.StrToUint(startIndexStringReplaced, &startIndex); err != nil {
		return err
	}
	screenInstanceParams.StartIndex = startIndex + 1
	return nil
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
		Limit(paging.Limit, paging.Offset).
		OrderBy(constant.DefaultOrder).
		Find(&list); err != nil {
		return list, count, err
	}
	// 获取总数
	if count, err := database.DB.
		Where(paging.Search).
		Count(new(DataSource)); err != nil {
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
	if _, err := database.DB.
		Where(ScreenInstanceSelectCondition, id, constant.IsExist).
		Get(screenInstance); err != nil {
		return screenInstanceParams, err
	}
	screenInstanceParams.InstanceId = screenInstance.InstanceId
	screenInstanceParams.InstanceTitle = screenInstance.InstanceTitle
	screenInstanceParams.InstanceWidth = screenInstance.InstanceWidth
	screenInstanceParams.InstanceHeight = screenInstance.InstanceHeight
	screenInstanceParams.InstanceBackgroundColor = screenInstance.InstanceBackgroundColor
	screenInstanceParams.InstanceBackgroundImg = screenInstance.InstanceBackgroundImg
	screenInstanceParams.InstanceVersion = screenInstance.InstanceVersion
	// 根据可视化大屏实例ID获取图表信息列表
	chartItems, err := GetChartItemByInstance(id, screenInstance.InstanceVersion)
	if err != nil {
		return screenInstanceParams, err
	}
	screenInstanceParams.ChartItems = *chartItems
	if len(screenInstanceParams.ChartItems) > 0 {
		if err := screenInstanceParams.setStartIndex(); err != nil {
			return screenInstanceParams, err
		}
	} else {
		screenInstanceParams.StartIndex = 0
	}

	return screenInstanceParams, nil
}

/**
 * 根据ID删除数据
 * @method DeleteScreenInstanceById
 * @param [uint64] id [ID]
 * @return [error] [错误]
 */
func DeleteScreenInstanceById(id uint64) error {
	// 根据ID删除数据
	if _, err := database.DB.
		Table(new(ScreenInstance)).
		Where(ScreenInstanceSelectCondition, id, constant.IsExist).
		Update(map[string]interface{}{constant.DelFlag: constant.IsNotExist}); err != nil {
		return err
	}
	return nil
}

/**
 * 保存大屏实例
 * @method SaveScreenInstance
 * @param [ScreenInstanceJson] screenInstanceJson [可视化大屏对象]
 * @param [uint64] editUser [进行操作的用户]
 * @return [error] [错误]
 */
func SaveScreenInstance(screenInstanceJson *ScreenInstanceJson, editUser uint64) (uint64, error) {
	screenInstance := new(ScreenInstance)
	screenInstance.InstanceTitle = screenInstanceJson.InstanceTitle
	screenInstance.InstanceWidth = screenInstanceJson.InstanceWidth
	screenInstance.InstanceHeight = screenInstanceJson.InstanceHeight
	screenInstance.InstanceBackgroundColor = screenInstanceJson.InstanceBackgroundColor
	screenInstance.InstanceBackgroundImg = screenInstanceJson.InstanceBackgroundImg
	screenInstance.InstanceViewImg = screenInstanceJson.InstanceViewImg
	// 默认版本为1，每次更新的时候加1
	screenInstance.InstanceVersion = 1
	screenInstance.AddTime = time.Now()
	screenInstance.AddUser = editUser
	screenInstance.EditTime = time.Now()
	screenInstance.EditUser = editUser
	screenInstance.DelFlag = constant.IsExist
	if _, err := database.DB.
		Insert(screenInstance); err != nil {
		return 0, err
	}
	instanceId := screenInstance.InstanceId
	instanceVersion := screenInstance.InstanceVersion
	if err := SaveChartItem(screenInstanceJson.ChartItems, instanceId, instanceVersion); err != nil {
		return instanceId, err
	}
	return instanceId, nil
}

/**
 * 更新大屏实例
 * @method UpdateDataSource
 * @param [ScreenInstanceJson] screenInstanceJson [数据对象]
 * @param [uint64] id [数据源ID]
 * @param [uint64] editUser [进行操作的用户]
 * @return [error] [错误]
 */
func UpdateScreenInstance(screenInstanceJson *ScreenInstanceJson, id uint64, editUser uint64) error {
	// 先更新大屏实例，然后在将版本号+1保存图表对象
	screenInstance := new(ScreenInstance)
	screenInstance.InstanceTitle = screenInstanceJson.InstanceTitle
	screenInstance.InstanceWidth = screenInstanceJson.InstanceWidth
	screenInstance.InstanceHeight = screenInstanceJson.InstanceHeight
	screenInstance.InstanceBackgroundColor = screenInstanceJson.InstanceBackgroundColor
	screenInstance.InstanceBackgroundImg = screenInstanceJson.InstanceBackgroundImg
	screenInstance.InstanceViewImg = screenInstanceJson.InstanceViewImg
	// 默认版本为1，每次更新的时候加1
	screenInstance.InstanceVersion = screenInstanceJson.InstanceVersion + 1
	screenInstance.EditTime = time.Now()
	screenInstance.EditUser = editUser
	screenInstance.DelFlag = constant.IsExist
	if _, err := database.DB.
		Table(new(ScreenInstance)).
		Where(ScreenInstanceSelectCondition, id, constant.IsExist).
		Update(screenInstance); err != nil {
		return err
	}
	instanceVersion := screenInstance.InstanceVersion
	if err := SaveChartItem(screenInstanceJson.ChartItems, id, instanceVersion); err != nil {
		return err
	}
	return nil
}
