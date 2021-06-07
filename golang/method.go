package main

import "fmt"

type MyInt int

func (i MyInt) Double() int {
	return int(i * 2)
}

func main() {
	myInt := MyInt(10)
	fmt.Print(myInt.Double())
}
