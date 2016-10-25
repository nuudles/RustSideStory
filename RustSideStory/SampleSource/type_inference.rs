// Type inference works great in Rust!

let x = "Hello";
let y;

if x == "Hello" {
	y = "World";
}
else {
	y = "Universe";
}

println!("{} {}", x, y);
