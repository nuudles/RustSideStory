// Some people say Swift Enums inspired by Rust

enum Language {
	case rust
	case swift
	case other(name: String)

	var awesome: Bool {
		switch self {
		case .rust: return true
		case .swift: return true
		case .other(let name): return name == "Go"
		}
	}
}

print("\(Language.rust.awesome) " +
	"\(Language.swift.awesome) " +
	"\(Language.other(name: "Go").awesome) " +
	"\(Language.other(name: "ObjC").awesome)")
