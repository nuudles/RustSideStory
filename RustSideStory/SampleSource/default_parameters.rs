// No default parameters... ish... 😞
trait Incrementer {
    fn increment(self) -> Self;
    fn incremented(self, by: Self) -> Self;
}

impl Incrementer for i32 {
    fn increment(self) -> Self { self.incremented(1) }
    fn incremented(self, by: Self) -> Self { self + by }
}

fn main() {
    println!("{}", 5.increment());
    println!("{}", 5.incremented(3));
}
