package mylib

import "fmt"

var Public string = "Public"
var provate string = "private"

type Person struct {
	Name string
	Age  int
}

func Say() {
	fmt.Println("Human!")
}
