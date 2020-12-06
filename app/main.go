package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func helloWorld(c *gin.Context) {
	message := "hello world Now updated with CircleCI"
	c.JSON(http.StatusOK, gin.H{
		"message": message,
	})
}

func byeWorld(c *gin.Context) {
	message := "bye world"
	c.JSON(http.StatusOK, gin.H{
		"message": message,
	})
}

func heyWorld(c *gin.Context) {
	message := "hey world"
	c.JSON(http.StatusOK, gin.H{
		"message": message,
	})
}

func main() {
	engine := gin.Default()
	engine.GET("/", helloWorld)
	engine.GET("/bye", byeWorld)
	engine.GET("/hey", heyWorld)

	engine.Run(":8080")
}
