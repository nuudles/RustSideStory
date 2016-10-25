// Potential for retain cycles

class MyClass {
	let button = Button()
	var clicks = 0

	init() {
		super.init()

		button.clickHandler = {
			self.clicks += 1 // Retain cycle
		}
	}
}

button.clickHandler = { [unowned self] in self.clicks += 1 }
button.clickHandler = { [weak self] in self?.clicks += 1 }
