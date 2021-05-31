package main

import "fmt"

func main() {
	t, f := true, false
	fmt.Printf("%T %v %t\n", t, t, t)
	fmt.Printf("%T %v %t\n", f, f, 1)

	fmt.Println(true && true)
	fmt.Println(true && false)
	fmt.Println(false && false)

	fmt.Println(true || true)
	fmt.Println(true || false)
	fmt.Println(false || false)

	fmt.Println(!true)
	fmt.Println(!false)
}
