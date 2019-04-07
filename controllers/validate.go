package controllers

import (
	"gopkg.in/go-playground/validator.v9"
)

var (
	validate *validator.Validate
)

func init() {
	validate = validator.New()
}

func validatorErrorData(err error) string {
	var s string
	for _, err := range err.(validator.ValidationErrors) {
		if err != nil {
			s += "{" + err.Field() + "字段不符合规则}"
		}
	}
	return s
}
