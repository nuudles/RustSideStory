// if let introduced with Swift

let x: String? = "Hello World"
let nothing: Int? = nil

if let x = x {
	print("x found! \(x)")
}
if case .some(let x) = x {
	print("x found! \(x)")
}
if let nothing = nothing {
	print("nothing found! \(nothing)")
}

switch x {
	case .some(let x): print("x found! \(x)")
	default: break
}
