// Lab code goes in this file
package main

import "fmt"

func main() {
	// fmt.Println("Hello World!")
	name := ""
	fmt.Print("Enter your name: ")
	fmt.Scanf("%s\n", &name)
	fmt.Printf("Hello, %s\n", name)
}
