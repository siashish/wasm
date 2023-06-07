package main

import "fmt"

func main() {
	fmt.Println(fibo(47))
}

//export fibo
func fibo(n uint32) uint32 {
	if n < 2 {
		return 1
	} else {
		return fibo(n-1) + fibo(n-2)
	}
}
