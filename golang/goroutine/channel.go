package main

import "fmt"

func goroutine(s []int, c chan int) {
	sum := 0
	for _, v := range s {
		sum += v
	}
	c <- sum
}
func main() {
	s := []int{1, 2, 3, 4, 5}
	t := []int{1, 2, 3}
	u := []int{1, 2}
	v := []int{1, 2, 3, 4, 5, 6}
	c := make(chan int)
	go goroutine(s, c)
	go goroutine(t, c)
	go goroutine(u, c)
	go goroutine(v, c)
	x := <-c
	y := <-c
	z := <-c
	a := <-c
	fmt.Println(x)
	fmt.Println(y)
	fmt.Println(z)
	fmt.Println(a)
}
