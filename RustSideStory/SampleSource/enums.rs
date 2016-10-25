// Rust Enums are awesome! Can contain values!

trait Awesome {
    fn awesome(self) -> bool;
}

enum Language {
    Rust,
    Swift,
    Other(String),
}

impl Awesome for Language {
    fn awesome(self) -> bool {
        match self {
            Language::Rust => return true,
            Language::Swift => return true,
            Language::Other(name) => return name == "Go",
        }
    }
}

fn main() {
    println!("{:?} {:?} {:?} {:?}",
             Language::Rust.awesome(),
             Language::Swift.awesome(),
             Language::Other("Go".to_string()).awesome(),
             Language::Other("ObjC".to_string()).awesome());
}
