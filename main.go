package main

import (
	"fmt"
	"log"

	"github.com/ieee0824/go-jni-docker-sample/java"
)

func main() {
	val, err := java.Mathsqrt(2.0)
	if err != nil {
		log.Fatalln(err)
	}
	fmt.Println(val)
}
