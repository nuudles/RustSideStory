// Guard statements introduced in Swift 2.0
// Helps prevent rightward drift

guard let x = x,
	y = doSomething(with: x),
	z = doSomething(with: y)
	else {
		print("Failure!")
		return
	}

print("Success!")

// Rust RFC for similar functionality postponed
// https://github.com/rust-lang/rfcs/pull/1303
