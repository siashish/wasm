package main

import "fmt"

func main() {
	var n uint32 = 47
	fmt.Println("fibonacci(", n, ")= ", fibo(n))
}

//export fibo
func fibo(n uint32) uint32 {
	if n < 2 {
		return 1
	} else {
		return fibo(n-1) + fibo(n-2)
	}
}
