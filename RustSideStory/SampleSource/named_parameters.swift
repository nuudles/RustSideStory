// Named parameters! 😁

let string = "Hello world"
print("\(string.replacingOccurrences(of: "e", with: "o"))")

extension String {
	func replace(_ needle: String, _ replacement: String) -> String {
		return replacingOccurrences(of: needle, with: replacement)
	}
}

print("\(string.replace("e", "o"))")
