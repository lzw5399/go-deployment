package main

import (
	"github.com/gin-gonic/gin"
	"github.com/zhiwen-kooboo/go-deployment/controllers"
)

func main() {
	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": controllers.Hello(),
		})
	})
	r.Run() // listen and serve on 0.0.0.0:8080
}
