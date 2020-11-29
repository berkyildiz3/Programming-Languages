use std::collections::HashMap;
//Some lines are commented in sake of execution.

//This function is taken from official Rust documentation.
fn analyze_slice(slice: &[i32]) {
    println!("first element of the slice: {}", slice[0]);
    println!("the slice has {} elements", slice.len());
}

fn main() {

    println!("----------Types For Legal Subscripts----------\n");
    let books = ["book1", "book2", "book3"];
    println!("{}", books[0]); //output: book1
    //let a = "c";
    //println!("{}", books[a]); //output: error[E0277]: the trait bound `&str: std::slice::SliceIndex<[&str]>` is not satisfied
    println!("----------Range Check----------\n");
    //println!("{}", books[5]);//give both error and warning
    println!("There is range check");
    println!("----------Ragged & Rectangular Multidimensioned Arrays----------\n");
    println!("Ragged: natively not allowed, but by importing some libraries or packages, ragged arrays can be built");
    //let ragged = [1, 2, 3, [4, 5]]; natively not allowed. gives error error[E0308]: mismatched types, expected integral variable, found array
    println!("Multidimensional: ");
    let mut state = [[0u8; 4]; 6];
    state[0][1] = 42;
    println!("{}", state[0][1]); //output: 42
    println!("----------Array Initialization----------\n");
    let init = ["Lists ", "can ", "be ", "initialized ", "in ", "Rust."];
    println!("{:?}", init); //output: ["Lists ", "can ", "be ", "initialized ", "in ", "Rust."]
    println!("----------Array Slices----------\n");
    //Array slice example is taken from official Rust documentation.
    let ys: [i32; 500] = [0; 500];
    analyze_slice(&ys[1 .. 4]); 
    //output: first element of the slice: 0
    //the slice has 3 elements
    
    println!("----------Array Operations----------\n");
    let test = [1, 2, 3, 4, 5];
    println!("Length :{}",test.len()); //output:5 (returns size of the array)
    println!("----------Associative Array----------\n");
    //There is hashmap type for pretending associative arrays.
    let mut test1 = HashMap::new();
    test1.insert(String::from("a"), 10);
    test1.insert(String::from("b"), 20);

    for (key, value) in &test1 {
    println!("{}: {}", key, value);
    }
    
    
    
}