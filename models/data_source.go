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
	AddTime                time.Time `xorm:"created"`
	AddUser                uint64    `xorm:"bigint(20)"`
	DataSourceId           uint64    `xorm:"pk autoincr notnull 'data_source_id'"`
	DataSourceName         string    `xorm:"varchar(50) 'data_source_name'"`
	DataSourceType         string    `xorm:"varchar(50) 'data_source_type'"`
	DataSourceDatabaseName string    `xorm:"varchar(100) 'data_source_database_name'"`
	DataSourceIp           string    `xorm:"varchar(50) 'data_source_ip'"`
	DataSourcePort         uint      `xorm:"int(5) 'data_source_port'"`
	DataSourceUsername     string    `xorm:"varchar(50) 'data_source_username'"`
	DataSourcePassword     string    `xorm:"varchar(50) 'data_source_password'"`
	DelFlag                uint      `xorm:"int(1)"`
	EditTime               time.Time `xorm:"updated"`
	EditUser               uint64    `xorm:"bigint(20)"`
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
		OrderBy(constant.DefaultOrder).
		Find(&list); err != nil {
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
	if _, err := database.DB.
		Where(DataSourceSelectCondition, id, constant.IsExist).
		Get(dataSource); err != nil {
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
	// 根据ID删除数据
	if _, err := database.DB.
		Table(new(DataSource)).
		Where(DataSourceSelectCondition, id, constant.IsExist).
		Update(map[string]interface{}{constant.DelFlag: constant.IsNotExist}); err != nil {
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
	return errors.New(constant.DataSourceTypeError)
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
	if _, err := database.DB.
		Insert(dataSource); err != nil {
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
	if _, err := database.DB.
		Table(new(DataSource)).
		Where(DataSourceSelectCondition, id, constant.IsExist).
		Update(dataSource); err != nil {
		return err
	}
	return nil
}
