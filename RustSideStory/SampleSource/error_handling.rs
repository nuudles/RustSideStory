// Has the Result enum in the standard library

enum Result<T, E> { // E adopts the Error trait
    Ok(T),
    Err(E),
}

match "5".parse::<i32>() {
	Ok(num) => println!("Found number: {}", num),
	Err(err) => println!("Found error: {}", err),
}

// Or use the try! macro
let result = try!("notanumber".parse::<i32>());
