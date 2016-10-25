// if let introduced with RFC 160

let x = Some("Hello World");
let nothing: Option<i32> = None;

if let Some(x) = x {
	println!("x found! {}", x);
}
if let Some(nothing) = nothing {
	println!("nothing found! {}", nothing);
}

match x {
	Some(x) => println!("x found! {}", x),
	_ => {},
}
