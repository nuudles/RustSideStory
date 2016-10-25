// Swift ARC (from http://www.chriskrycho.com/rust-and-swift/)

class WouldBeJedi {
    let name: String
    let rank: UInt8
    let description: String

    init(name: String, rank: UInt8, description: String) {
        self.name = name
        self.rank = rank
        self.description = description
    }
}

func describe(_ trainee: WouldBeJedi) {
    print("\(trainee.name) (rank \(trainee.rank)) is \(trainee.description).")
}

let aTrainee = WouldBeJedi(
	name: "Zayne Carrick",
	rank: 1,
	description: "not very competent, but a great hero")

describe(aTrainee)
