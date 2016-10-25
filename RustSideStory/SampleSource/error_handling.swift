// No Result enum in Swift standard library
// https://github.com/antitypical/Result

// try/catch but without the performance penalties

do {
	try functionThatThrows()
	print("Function succeeded!")
}
catch let error { // error adopts ErrorType protocol
	print("Found error: \(error)")
}

let response = try? functionThatThrows() ?? "Default Value"
let response = try! functionThatThrows()

// Translates traditional Objective C errors into Swift try/catch
