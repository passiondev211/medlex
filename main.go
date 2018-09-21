package main

import (
	"github.com/Hepri/charts/models"
	_ "github.com/Hepri/charts/models"
	_ "github.com/Hepri/charts/routers"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	_ "github.com/lib/pq"
	_ "github.com/astaxie/beego/session/postgres"
)

func init() {
	// register db models
	orm.RegisterModel(new(models.AuthUser), new(models.Patient))

	orm.RegisterDriver("postgres", orm.DRPostgres)
	orm.RegisterDataBase("default", "postgres",
	    "user=root password=cTdPXsZk host=medlexai.cc1ibyknx2zz.us-east-1.rds.amazonaws.com port=5432 dbname=charts");

	//orm.RegisterDataBase("default", "postgres",
	//	"user=Hepri password=123456 host=localhost port=5432 dbname=trail_charts sslmode=disable")

	beego.BConfig.WebConfig.Session.SessionProvider = "postgresql"
	//beego.BConfig.WebConfig.Session.SessionProviderConfig = "postgres://Hepri:123456@localhost/trail_charts?sslmode=disable"
	beego.BConfig.WebConfig.Session.SessionProviderConfig = "postgres://root:cTdPXsZk@medlexai.cc1ibyknx2zz.us-east-1.rds.amazonaws.com/charts"
}

func main() {
	beego.BConfig.WebConfig.Session.SessionOn = true
	beego.BConfig.CopyRequestBody = true
	beego.SetStaticPath("/static", "static")
	beego.SetStaticPath("/img", "static/img")
	beego.SetStaticPath("/js", "static/js")
	beego.SetStaticPath("/css", "static/css")
	beego.SetStaticPath("/fonts", "static/fonts")
	beego.SetStaticPath("/testdata", "static/testdata")
	beego.SetViewsPath("views")
	beego.Run()
}
