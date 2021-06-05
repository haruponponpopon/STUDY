package main

import "fmt"

func main() {
	l := []string{"python", "go", "java"}
	for i := 0; i < len(l); i++ {
		fmt.Println(i, l[i])
	}
	for i, v := range l {
		fmt.Println(i, v)
	}
	for _, v := range l {
		fmt.Println(v)
	}

	m := map[string]int{"apple": 100, "banana": 200}

	for i, v := range m {
		fmt.Println(i, v)
	}

	for v := range m {
		fmt.Println(v)
	}
	for _, v := range m {
		fmt.Println(v)
	}
}
