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
				dataSourceApi.Get("/", controllers.GetDataSourcePage)
				dataSourceApi.Get("/list", controllers.GetDataSourceList)
				dataSourceApi.Get("/{id:uint64}", controllers.GetDataSource)
				dataSourceApi.Delete("/{id:uint64}", controllers.DeleteDataSource)
				dataSourceApi.PartyFunc("/test_connection", func(testConnectionApi router.Party) {
					testConnectionApi.Post("/", controllers.TestConnection)
				})
				dataSourceApi.Post("/", controllers.SaveDataSource)
				dataSourceApi.Put("/{id:uint64}", controllers.UpdateDataSource)
			})
			dataViewApi.PartyFunc("/screen_instance", func(screenInstanceApi router.Party) {
				screenInstanceApi.Get("/", controllers.GetScreenInstanceList)
				screenInstanceApi.Get("/{id:uint64}", controllers.GetScreenInstance)
				screenInstanceApi.Delete("/{id:uint64}", controllers.DeleteScreenInstance)
				screenInstanceApi.Post("/", controllers.SaveScreenInstance)
				screenInstanceApi.Put("/{id:uint64}", controllers.UpdateScreenInstance)
			})
			dataViewApi.PartyFunc("/chart_data", func(ChartDataApi router.Party) {
				ChartDataApi.Get("/", controllers.GetChartData)
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
