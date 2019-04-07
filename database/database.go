package database

import (
	"data_view/config"
	"fmt"
	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/mysql"
	"github.com/pelletier/go-toml"
)

var (
	DB = New()
)

/**
*设置数据库连接
*@param diver string
 */
func New() *gorm.DB {
	driver := config.Config.Get("database.driver").(string)
	configTree := config.Config.Get(driver).(*toml.Tree)
	userName := configTree.Get("databaseUserName").(string)
	password := configTree.Get("databasePassword").(string)
	databaseName := configTree.Get("databaseName").(string)
	connect := userName + ":" + password + "@/" + databaseName + "?charset=utf8&parseTime=True&loc=Local"
	database, err := gorm.Open(driver, connect)
	if err != nil {
		panic(fmt.Sprintf("No error should happen when connecting to  database, but got err=%+v", err))
	}
	database.DB().SetMaxIdleConns(10)
	database.DB().SetMaxOpenConns(100)
	database.SingularTable(true)
	database.LogMode(true)
	gorm.DefaultTableNameHandler = func(db *gorm.DB, defaultTableName string) string {
		return defaultTableName
	}
	return database
}
