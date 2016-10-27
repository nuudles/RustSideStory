// Rust Enums are awesome! Can contain values!

enum Language {
    Rust,
    Swift,
    Other(String),
}

impl Language {
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
