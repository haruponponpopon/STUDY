package main

import (
	"fmt"
)

var (
	i   int     = 1
	f64 float64 = 1.2
	s   string  = "test"
	t   bool    = true
	f   bool    = false
)

func foo() {
	xi := 1
	xf64 := 1.2
	xs := "test"
	xt := true
	xf := false
	var xf32 float32 = 1.2

	fmt.Println(xi, xf64, xs, xt, xf)
	fmt.Printf("%T\n", xf64)
	fmt.Printf("%T\n", xf32)
}

func main() {
	fmt.Println(i, f64, s, t, f)
	foo()
}
