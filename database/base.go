package database

import (
	"fmt"
	"github.com/jinzhu/gorm"
	"reflect"
)

func GetAll(searchKeys map[string]interface{}, offset, limit int) *gorm.DB {
	if len(searchKeys) > 0 {
		for k, v := range searchKeys {
			tf := reflect.TypeOf(v).Name()
			if tf == "string" && v != "" {
				DB.Where(k+"=?", v)
			}
		}
	}
	DB.Order("edit_time desc")
	fmt.Println(offset)
	fmt.Println(limit)
	DB.Offset(offset)
	DB.Limit(limit)
	return DB
}

func GetCount(searchKeys map[string]interface{}) *gorm.DB {
	if len(searchKeys) > 0 {
		for k, v := range searchKeys {
			tf := reflect.TypeOf(v).Name()
			if tf == "string" && v != "" {
				DB.Where(k+"=?", v)
			}
		}
	}

	return DB
}
