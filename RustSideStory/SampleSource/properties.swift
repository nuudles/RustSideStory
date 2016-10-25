// Many kinds of properties in Swift

struct Person {
	let firstName: String
	let lastName: String

	var middleName: String {
		willSet { // Property observers
			print("Middle name will be set! \(newValue)")
		}
	}
	var middleInitial: String? { // Computer property
		get {
			return middleName.characters.first.map { String($0) }
		}
		set {
			middleName = newValue ?? ""
		}
	}

	var fullName: String { // Computed property (read only)
		return "\(firstName) \(lastName)"
	}
	lazy var anagrams: [String]? = { // Lazy computed properties
		let anagrams = computeAnagrams(name: self.fullName)
		print("Calculated anagrams")
		return anagrams
	}()
}
