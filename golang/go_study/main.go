package main

import (
	"fmt"
	"go_study/mylib"
	"go_study/mylib/under"
)

func main() {
	s := []int{1, 2, 3, 4, 5}
	fmt.Println(mylib.Average(s))

	mylib.Say()
	under.Hello()
	person := mylib.Person{Name: "Mike", Age: 20}
	fmt.Println(person)
	fmt.Println(mylib.Public)
	// fmt.Println(mylib.private)
}
