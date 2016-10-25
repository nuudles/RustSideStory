// Default parameters... 😁

extension Int {
	func incremented(by: Int = 1) -> Int {
		return self + by
	}
}

print("\(5.incremented())")
print("\(5.incremented(by: 3))")

// Used in this presentation!
func codeLabel(filename: String, language: Language, fontSize: CGFloat = 25) -> UILabel
