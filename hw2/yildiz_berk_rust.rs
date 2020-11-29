fn main() {

//Some lines are commented in sake of execution
println!("----------Types of Loop Control Variables----------\n");
println!("For Loop: Integers can be loop control variable \n");

//prints 5 times regardless of the type of n. range has to be integer.
for i in 0..5 {
    println!("for - integer");
}

println!("\n");
//throws error: the trait `std::iter::Step` is not implemented for `&str`
//for n in "a".."e" {
//    println!("for");
//}

println!("While Loop: Integers, floats, strings and booleans can be loop control variables \n");

let mut j = 0;

//print 5 times with integer control variable j
while j < 5 {
    println!("while - integer");
    j += 1;
}

println!("\n");

let mut j1 = 0.0; 
//print 5 times with float control variable j1. It does not allow to compare float numbers with integers.
while j1 < 1.0 {
    println!("while - float");
    j1 += 0.2;
}

println!("\n");
//throws error: the trait `std::cmp::PartialOrd<{integer}>` is not implemented for `{float} 
//while j1 < 1 {
//    println!("while - float");
//    j1 += 0.2;

//print 2 times (1 iteration) with boolean control variable j2
let mut j2 = true; 
while (j2 != false) 
{ 
    println!("element(while-boolean)"); 
    println!("element(while-boolean)"); 
    j2=false; 
}

println!("\n");
//print 2 times (1 iteration) with string control variable j3
let mut j3 = "a";
while (j3 != "b") 
{ 
    println!("element(while-string)"); 
    println!("element(while-string)"); 
    j3="b"; 
}

println!("\n");

println!("----------Scopes of Loop Control Variables----------\n");

//Control for scope of m
let mut m = 0;
for i in m..5
{
    //println!("element(for - number)");
}

println!("Value of m (from for loop) is {}", m);
println!("Scope of m is limited with loop because it value of m did not change, even it was incremented in the loop.");

//Control for scope of value n
let mut n = "a";
while (n != "b") 
{ 
    n="b"; 
}

println!("Value of n (from while loop) is {}", n);
println!("Scope of n is not limited with loop. In this case, it is a global variable because n is already defined at outside of the loop.\n");

println!("----------Changing Loop Control Variables & Parameters----------\n");

//Prints 5 times instead of 1 which shows that even loop control variable can be changed in the loop, it does not have an effect on loop control.
let mut l = 0;
for i in l..5
{
    println!("element(variable change control)");
    l=4;
}

println!("\n");

//Prints 5 times instead of 3 which shows that even loop parameters can be changed in the loop, it does not have an effect on loop control.
let mut p = 5;
for i in 0..p
{
    println!("element(loop parameter change control)");
    p=3;
}

println!("----------Evaluation of Loop Parameters----------\n");

println!("Changing Loop Control Variables & Parameters section showed that changes on loop parameters in the loop do not have any affect on loop. So loop parameters are evaluated only once before the loop in Rust.");



}





