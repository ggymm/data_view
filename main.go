package main

import (
	"data_view/config"
	"data_view/constant"
	"data_view/controllers"
	"data_view/database"
	"data_view/middleware"
	"github.com/iris-contrib/middleware/cors"
	"github.com/kataras/iris"
	"github.com/kataras/iris/core/router"
	"github.com/kataras/iris/middleware/logger"
)

func newApp() (api *iris.Application) {
	api = iris.New()
	api.Use(logger.New())

	api.OnErrorCode(iris.StatusNotFound, func(context iris.Context) {
		_, _ = context.JSON(controllers.ApiResource(iris.StatusNotFound, nil, constant.StatusNotFound))
	})
	api.OnErrorCode(iris.StatusInternalServerError, func(context iris.Context) {
		_, _ = context.WriteString(constant.StatusInternalServerError)
	})

	iris.RegisterOnInterrupt(func() {
		_ = database.DB.Close()
	})

	crs := cors.New(cors.Options{
		AllowedOrigins:   []string{"*"}, //允许通过的主机名称
		AllowedMethods:   []string{"GET", "POST", "PUT", "DELETE", "OPTIONS"},
		AllowedHeaders:   []string{"*"},
		AllowCredentials: true,
	})

	v1 := api.Party("/api/v1", crs).AllowMethods(iris.MethodOptions)
	{
		v1.Use(middleware.CheckToken)
		v1.PartyFunc("/data_view", func(dataViewApi router.Party) {
			dataViewApi.PartyFunc("/data_source", func(dataSourceApi router.Party) {
				dataSourceApi.Get("/", controllers.GetDataSourceList)
				dataSourceApi.Get("/{id:uint64}", controllers.GetDataSource)
				dataSourceApi.Delete("/{id:uint64}", controllers.DeleteDataSource)
				dataSourceApi.PartyFunc("/test_connection", func(testConnectionApi router.Party) {
					testConnectionApi.Post("/", controllers.TestConnection)
				})
				dataSourceApi.Post("/", controllers.SaveDataSource)
				dataSourceApi.Put("/", controllers.UpdateDataSource)
			})
			dataViewApi.PartyFunc("/screen_instance", func(screenInstanceApi router.Party) {
				screenInstanceApi.Get("/", controllers.GetScreenInstanceList)
			})
		})
	}

	return
}

func main() {
	app := newApp()
	addr := config.Config.Get("app.addr").(string)
	_ = app.Run(iris.Addr(addr))
}
