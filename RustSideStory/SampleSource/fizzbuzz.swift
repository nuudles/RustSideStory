// SwiftBuzz
func main() {
    for num in 1..<101 {  // Range notations!
        switch (num%3, num%5) { // Pattern Matching!
        case (0, 0): print("fizzbuzz")
        case (0, _): print("fizz")
        case (_, 0): print("buzz")
        default: print("\(num)")
        }
    }
}
