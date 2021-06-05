package main

import (
	"fmt"
	"time"
)

func getOsName() string {
	return "unknown"
}

func main() {
	// os := "mac"
	/*os := getOsName()
	switch os {
	case "mac":
		fmt.Println("Mac!")
	case "windows":
		fmt.Println("Windows!")
	default:
		fmt.Println("Default!")
	}*/
	switch os := getOsName(); os {
	case "mac":
		fmt.Println("Mac!")
	case "windows":
		fmt.Println("Windows!")
	default:
		fmt.Println("Default!", os)
	}

	t := time.Now()
	fmt.Println(t.Hour())
	switch {
	case t.Hour() < 12:
		fmt.Println("Morning")
	case t.Hour() < 17:
		fmt.Println("Afternoon")
	}
}
