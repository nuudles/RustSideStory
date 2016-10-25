// Multiple if let statements

if let x = x {
	if let y = doSomething(with: x) {
		if let z = doSomething(with: y) {
			print("Success!")
		}
	}
}
else {
	print("Failure!")
}

// https://github.com/rust-lang/rfcs/issues/929
if let x = x, y = doSomething(with: x), z = doSomething(with: y) {
	print("Success!")
}
else {
	print("Failure!")
}
