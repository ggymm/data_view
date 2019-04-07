package utils

import (
	"data_view/constant"
	"encoding/json"
	"errors"
	"github.com/kataras/iris"
)

type PagingRequest struct {
	Page   int
	Size   int
	Offset int
	Limit  int
	Search map[string]interface{}
}

func NewPagingRequest(context iris.Context) (*PagingRequest, error) {
	page, pageErr := context.URLParamInt("page")
	size, sizeErr := context.URLParamInt("size")
	searchString := context.URLParam("search")
	if pageErr != nil || sizeErr != nil {
		return nil, errors.New(constant.RequestBodyError)
	}
	var search map[string]interface{}
	if len(searchString) > 0 {
		err := json.Unmarshal([]byte(searchString), &search)
		if err != nil {
			return nil, errors.New(constant.RequestBodyError)
		}
	}

	// 修正search数据
	for k, v := range search {
		if v == nil {
			delete(search, k)
		}
	}

	pagingRequest := PagingRequest{
		Page:   page,
		Size:   size,
		Search: search,
	}

	pagingRequest.pagingFormat()
	return &pagingRequest, nil
}

func (pagingRequest *PagingRequest) pagingFormat() {
	if pagingRequest.Page < 1 {
		pagingRequest.Page = 1
	}
	if pagingRequest.Size < 1 {
		pagingRequest.Size = 1
	}

	pagingRequest.Offset = (pagingRequest.Page - 1) * pagingRequest.Size
	pagingRequest.Limit = pagingRequest.Size
}
