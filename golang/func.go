package main

import "fmt"

/*func add() {
	fmt.Println("add function")
}*/

/*func add(x int, y int) {
	fmt.Println(x + y)
}*/

/*func add(x int, y int) int {
	return x + y
}*/

/*func add(x, y int) int {
	return x + y
}*/

func add(x, y int) (int, int) {
	return x + y, x - y
}

func cal(price, item int) (result int) {
	result = price * item
	// return result
	return
}

func main() {
	/*add(10, 20)*/
	/*r := add(10, 20)
	fmt.Println(r)*/
	r1, r2 := add(10, 20)
	fmt.Println(r1, r2)

	r3 := cal(100, 2)
	fmt.Println(r3)

	f := func(x int) {
		fmt.Println("inner func", x)
	}
	f(1)

	func(x int) {
		fmt.Println("inner func", x)
	}(1)
}
