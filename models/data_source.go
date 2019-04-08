package models

import (
	"data_view/constant"
	"data_view/database"
	"data_view/utils"
	"database/sql"
	"errors"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"strings"
	"time"
)

type DataSource struct {
	DataSourceId           uint64    `gorm:"primary_key bigint(20) NOT NULL AUTO_INCREMENT"`
	DataSourceName         string    `gorm:"varchar(50) DEFAULT NULL COMMENT '数据源名称'"`
	DataSourceType         string    `gorm:"varchar(50) DEFAULT NULL COMMENT '数据源类型'"`
	DataSourceDatabaseName string    `gorm:"varchar(100) DEFAULT NULL COMMENT '数据源的数据库名称'"`
	DataSourceIp           string    `gorm:"varchar(50) DEFAULT NULL COMMENT '数据源的IP地址'"`
	DataSourcePort         uint      `gorm:"int(5) DEFAULT NULL COMMENT '数据源的端口号'"`
	DataSourceUsername     string    `gorm:"varchar(50) DEFAULT NULL COMMENT '数据源的账户名称'"`
	DataSourcePassword     string    `gorm:"varchar(50) DEFAULT NULL COMMENT '数据源的账户密码'"`
	AddTime                time.Time `gorm:"datetime DEFAULT NULL COMMENT '添加时间'"`
	AddUser                uint64    `gorm:"bigint(20) DEFAULT NULL COMMENT '添加者'"`
	EditTime               time.Time `gorm:"datetime DEFAULT NULL COMMENT '编辑时间'"`
	EditUser               uint64    `gorm:"bigint(20) DEFAULT NULL COMMENT '编辑者'"`
	DelFlag                uint      `gorm:"int(1) DEFAULT NULL COMMENT '是否删除（1：存在；0：删除）'"`
}

type DataSourceJson struct {
	DataSourceDatabaseName string `json:"DataSourceDatabaseName" validate:"required"`
	DataSourceIp           string `json:"DataSourceIp" validate:"required"`
	DataSourceName         string `json:"DataSourceName" validate:"required"`
	DataSourcePassword     string `json:"DataSourcePassword" validate:"required"`
	DataSourcePort         uint   `json:"DataSourcePort" validate:"required"`
	DataSourceType         string `json:"DataSourceType" validate:"required"`
	DataSourceUsername     string `json:"DataSourceUsername" validate:"required"`
}

const DataSourceSelectCondition = "data_source_id = ? AND del_flag = ?"

/**
 * 获取分页列表
 * @method GetDataSourcePage
 * @param [utils.PagingRequest] paging [分页查询条件]
 * @return [[]*DataSource] [列表]
 * @return [int64] [总数]
 * @return [error] [错误]
 */
func GetDataSourcePage(paging *utils.PagingRequest) ([]*DataSource, int64, error) {
	var list = make([]*DataSource, 0)
	var count int64 = 0
	paging.Search[constant.DelFlag] = constant.IsExist
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
		Model(&DataSource{}).
		Where(paging.Search).
		Count(&count).Error; err != nil {
		return list, count, err
	}
	return list, count, nil
}

/**
 * 获取不分页列表
 * @method GetDataSourceList
 * @return [[]*DataSource] [列表]
 * @return [error] [错误]
 */
func GetDataSourceList() ([]*DataSource, error) {
	var list = make([]*DataSource, 0)
	var search = make(map[string]interface{})
	search[constant.DelFlag] = constant.IsExist
	// 获取查询列表
	if err := database.DB.
		Where(search).
		Order(constant.DefaultOrder).
		Find(&list).Error; err != nil {
		return list, err
	}
	return list, nil
}

/**
 * 根据ID获取数据
 * @method GetDataSourceById
 * @param [uint64] id [ID]
 * @return [*DataSource] [对象]
 * @return [error] [错误]
 */
func GetDataSourceById(id uint64) (*DataSource, error) {
	dataSource := new(DataSource)
	// 根据ID获取数据
	if err := database.DB.
		Where(DataSourceSelectCondition, id, constant.IsExist).
		First(&dataSource).Error; err != nil {
		return dataSource, err
	}
	return dataSource, nil
}

/**
 * 根据ID删除数据
 * @method DeleteDataSourceById
 * @param [uint64] id [ID]
 * @return [*DataSource] [对象]
 * @return [error] [错误]
 */
func DeleteDataSourceById(id uint64) error {
	dataSource := new(DataSource)
	// 根据ID删除数据
	if err := database.DB.
		Model(&dataSource).
		Where(DataSourceSelectCondition, id, constant.IsExist).
		Update(constant.DelFlag, constant.IsNotExist).Error; err != nil {
		return err
	}
	return nil
}

/**
 * 测试数据库连接
 * @method TestConnection
 * @param [DataSourceJson] dataSourceJson [数据对象]
 * @return [error] [错误]
 */
func TestConnection(dataSourceJson *DataSourceJson) error {
	dataSourceType := dataSourceJson.DataSourceType
	if strings.EqualFold(dataSourceType, constant.MySQL) {
		urlTemplate := "%s:%s@tcp(%s:%d)/%s?charset=utf8&multiStatements=true"
		url := fmt.Sprintf(urlTemplate,
			dataSourceJson.DataSourceUsername,
			dataSourceJson.DataSourcePassword,
			dataSourceJson.DataSourceIp,
			dataSourceJson.DataSourcePort,
			dataSourceJson.DataSourceDatabaseName)
		db, err := sql.Open("mysql", url)
		if err != nil {
			return err
		}
		defer db.Close()
		connErr := db.Ping()
		if connErr != nil {
			return connErr
		}
		return nil
	} else if strings.EqualFold(dataSourceType, constant.Oracle) {
	} else if strings.EqualFold(dataSourceType, constant.SQLServer) {
	} else if strings.EqualFold(dataSourceType, constant.DB2) {
	}
	return errors.New("数据库类型错误")
}

/**
 * 保存数据源
 * @method SaveDataSource
 * @param [DataSourceJson] dataSourceJson [数据对象]
 * @param [uint64] editUser [进行操作的用户]
 * @return [error] [错误]
 */
func SaveDataSource(dataSourceJson *DataSourceJson, editUser uint64) error {
	dataSource := new(DataSource)
	dataSource.DataSourceName = dataSourceJson.DataSourceName
	dataSource.DataSourceType = dataSourceJson.DataSourceType
	dataSource.DataSourceDatabaseName = dataSourceJson.DataSourceDatabaseName
	dataSource.DataSourceIp = dataSourceJson.DataSourceIp
	dataSource.DataSourcePort = dataSourceJson.DataSourcePort
	dataSource.DataSourceUsername = dataSourceJson.DataSourceUsername
	dataSource.DataSourcePassword = dataSourceJson.DataSourcePassword
	dataSource.AddTime = time.Now()
	dataSource.AddUser = editUser
	dataSource.EditTime = time.Now()
	dataSource.EditUser = editUser
	dataSource.DelFlag = constant.IsExist
	if err := database.DB.
		Create(dataSource).Error; err != nil {
		return err
	}
	return nil
}

/**
 * 更新数据源
 * @method UpdateDataSource
 * @param [DataSourceJson] dataSourceJson [数据对象]
 * @param [uint64] id [数据源ID]
 * @param [uint64] editUser [进行操作的用户]
 * @return [error] [错误]
 */
func UpdateDataSource(dataSourceJson *DataSourceJson, id uint64, editUser uint64) error {
	dataSource := new(DataSource)
	dataSource.DataSourceName = dataSourceJson.DataSourceName
	dataSource.DataSourceType = dataSourceJson.DataSourceType
	dataSource.DataSourceDatabaseName = dataSourceJson.DataSourceDatabaseName
	dataSource.DataSourceIp = dataSourceJson.DataSourceIp
	dataSource.DataSourcePort = dataSourceJson.DataSourcePort
	dataSource.DataSourceUsername = dataSourceJson.DataSourceUsername
	dataSource.DataSourcePassword = dataSourceJson.DataSourcePassword
	dataSource.EditTime = time.Now()
	dataSource.EditUser = editUser
	dataSource.DelFlag = constant.IsExist
	if err := database.DB.
		Model(&DataSource{}).
		Where(DataSourceSelectCondition, id, constant.IsExist).
		Updates(dataSource).Error; err != nil {
		return err
	}
	return nil
}
