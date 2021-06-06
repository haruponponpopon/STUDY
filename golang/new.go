package main

import "fmt"

func main() {
	s := make([]int, 0)
	fmt.Printf("%T\n", s)

	m := make(map[string]int)
	fmt.Printf("%T\n", m)

	var p *int = new(int)
	fmt.Printf("%T\n", p)
	/*var p *int = new(int)
	fmt.Println(p)
	fmt.Println(*p)
	*p++
	fmt.Println(*p)

	var p2 *int
	fmt.Println(p2)*/
}
