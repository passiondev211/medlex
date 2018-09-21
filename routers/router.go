package routers

import (
	"github.com/Hepri/charts/controllers"
	"github.com/astaxie/beego"
)

func init() {
	//beego.Router("/register", &controllers.MainController{}, "get,post:Register")
	//beego.Router("/allcharts", &controllers.MainController{}, "get:AllCharts")
	//beego.Router("/template", &controllers.MainController{}, "get:Template")

	beego.Router("/login", &controllers.MainController{}, "get:Login")
	beego.Router("/allcharts", &controllers.MainController{}, "get:Allcharts")

	api_ns := beego.NewNamespace("/api",
		beego.NSRouter("/login", &controllers.LoginController{}, "post:Login"),
		beego.NSRouter("/logout", &controllers.LogoutController{}, "post:Logout"),
		beego.NSNamespace("/patients",
			beego.NSRouter("/", &controllers.PatientApiController{}, "get:List;post:Create"),
			beego.NSRouter("/:id([0-9]+)", &controllers.PatientApiController{}, "get:Get;delete:Delete;put:Update"),
		),
	)
	beego.AddNamespace(api_ns)
}
