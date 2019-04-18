package models

import (
	"data_view/constant"
	"data_view/database"
	"time"
)

type ImageBg struct {
	AddTime   time.Time `xorm:"created"`
	AddUser   uint64    `xorm:"bigint(20)"`
	ImageId   uint64    `xorm:"pk autoincr notnull 'image_id'"`
	ImageName string    `xorm:"varchar(200) 'image_name'"`
	ImagePath string    `xorm:"varchar(500) 'image_name'"`
	ImageSize uint64    `xorm:"bigint(20) 'image_size'"`
	DelFlag   uint      `xorm:"int(1)"`
	EditTime  time.Time `xorm:"updated"`
	EditUser  uint64    `xorm:"bigint(20)"`
}

/**
 * 获取不分页列表
 * @method GetImageBgList
 * @return [[]*ImageBg] [列表]
 * @return [error] [错误]
 */
func GetImageBgList() ([]*ImageBg, error) {
	var list = make([]*ImageBg, 0)
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
 * 保存背景图片
 * @method SaveImageBg
 * @param [string] imageName [图片名称]
 * @param [string] imagePath [图片路径（不包括头）]
 * @param [int64] imageSize [图片大小]
 * @param [uint64] editUser [进行操作的用户]
 * @return [error] [错误]
 */
func SaveImageBg(imageName string, imagePath string, imageSize int64, editUser uint64) error {
	imageBg := new(ImageBg)
	imageBg.ImageName = imageName
	imageBg.ImagePath = imagePath
	imageBg.ImageSize = uint64(imageSize)
	imageBg.AddTime = time.Now()
	imageBg.AddUser = editUser
	imageBg.EditTime = time.Now()
	imageBg.EditUser = editUser
	imageBg.DelFlag = constant.IsExist
	if _, err := database.DB.
		Insert(imageBg); err != nil {
		return err
	}
	return nil
}
