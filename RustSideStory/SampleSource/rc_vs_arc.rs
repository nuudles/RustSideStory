// Rust Rc (from http://www.chriskrycho.com/rust-and-swift/)

use std::rc::Rc;

pub struct WouldBeJedi {
    name: String,
    rank: u8,
    description: String,
}

fn main() {
    let trainee = WouldBeJedi {
        name: "Zayne Carrick".to_string(),
        rank: 1,
        description: "not very competent, but a great hero".to_string()
    };
    let wrapped_trainee = Rc::new(trainee);

    let ref_trainee = wrapped_trainee.clone();
    describe(ref_trainee);
}

fn describe(trainee: Rc<WouldBeJedi>) {
    println!("{} (rank {}) is {}.",
             trainee.name,
             trainee.rank,
             trainee.description);
}
