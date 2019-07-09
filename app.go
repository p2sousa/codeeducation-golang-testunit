package main

import "fmt"

func Sum(number1 int, numebr2 int) int {
	return number1 + numebr2;
}

func main() {
	res := Sum(5, 5)
    fmt.Println("5+5 =", res)
}