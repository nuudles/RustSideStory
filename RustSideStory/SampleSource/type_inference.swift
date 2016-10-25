// Type inference is OK in swift...

let x = "Hello"
let y // Fails to compile due to no type

if x == "Hello" {
	y = "World"
}
else {
	y = "Universe"
}

print("\(x) \(y)")

// Tends to get hairy with complicated closures
func doSomethingWith<T, U>(closure: ((x: T, y: T?) -> U?)? = nil) {

}
