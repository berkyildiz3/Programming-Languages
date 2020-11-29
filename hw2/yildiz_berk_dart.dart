void main(){
    
//Some lines are commented in sake of execution
print("----------Types of Loop Control Variables----------\n");
print("For Loop: Integers and doubles can be loop control variable \n");
//print 5 times with integer control variable i
for(int i = 0; i < 5; i++)
{
    print("element(for - integer)");
}
print("\n");

//print 5 times with double control variable i
for(double i = 0.0; i < 1; i=i+0.2)
{
    print("element(for - double");
}
print("\n");

//print nothing with boolean control varible i
//for( bool i = true; i == false; i)
//{
//    print("loopElement(boolean)\n");
//    i=false;
//}

//print nothing with string control variable i
//for(string i = "a"; i == "e"; i)
//{
//    print("loopElement\n");
//    i = "e"    
//}

print("For-in Loop: All data types can be loop control variable \n");

//print 5 times regardless of the type of controll variable
var letters = ["a", "b", "c", "a", "a"];
var letter;
for (letter in letters)  
{ 
    print("foundLetter"); 
} 

print("\n");

print("While Loop: Integers, doubles, strings and booleans can be loop control variables \n\n");

//print 5 times with integer control variable j
int j1 = 0; 
while (j1 < 5) 
{ 
    print("element(while-integer)"); 
    j1++; 
} 

print("\n");

//print 5 times with double control variable j
var j = 0.0; 
while (j < 1) 
{ 
    print("element(while-double)"); 
    j+=0.2; 
} 

print("\n");

//print 2 times (1 iteration) with boolean control variable j
var j2 = true; 
while (j2 != false) 
{ 
    print("element(while-boolean)"); 
    print("element(while-boolean)"); 
    j2=false; 
} 

print("\n");

var j3;
//print 2 times (1 iteration) with string control variable j
while (j3 != "b") 
{ 
    print("element(while-string)"); 
    print("element(while-string)"); 
    j3="b"; 
}

print("\n");

print("Do-While Loop: Numbers, strings and booleans can be loop control variables \n\n");

//print 5 times with integer control variable k
var k1 = 0; 
do 
{ 
    print("element(doWhile-integer)"); 
    k1++; 
} while (k1 < 5); 

print("\n");

//print 5 times with double control variable k
var k = 0.0; 
do 
{ 
    print("element(doWhile-double)"); 
    k += 0.2; 
} while (k < 1); 

print("\n");

//print 2 times (1 iteration) with boolean control variable k
var k2 = true;
do 
{ 
    print("element(doWhile-boolean)"); 
    print("element(doWhile-boolean)"); 
    k2=false; 
} while (k2 != false); 

print("\n");

//print 2 times (1 iteration) with string control variable k
var k3 = "a"; 
do 
{ 
    print("element(doWhile-string)"); 
    print("element(doWhile-string)"); 
    k3="b"; 
} while (k3 != "b"); 

print("\n");

print("----------Scopes of Loop Control Variables----------\n\n");

//Control for scope of i
for(int i = 0; i < 5; i++)
{
    //print("element(for - number)\n");
}

print("Value of i (from for loop) is throwing error: No top-level getter 'i' declared. Hence, scope of i is limited with the loop");

var j5;
//Control for scope of value j
while (j5 != "b") 
{ 
    j5="b"; 
}
print("Value of j (from while loop) is: " + j5 + " => Scope of j is not limited with loop. In this case, it is a global variable because j is already defined at outside of the loop.");
print("\n");

//Control for scope of value l
//do 
//{ 
    //print("element(doWhile-boolean)\n"); 
    //print("element(doWhile-boolean)\n"); 
//    var l =false; 
//} while (l != false); 

print("Value of l (from do-while loop) is throwing error. Scope of l is  limited with loop.");
print("\n");

print("----------Changing Loop Control Variables & Parameters----------\n\n");

//Prints just 1 time instead of 5 which shows that loop control variable can be changed in the loop and change can affect loop control.
for(int i = 0; i < 5; i++)
{
    print("element(variable change control)");
    i=4;
}

print("\n");

//prints 3 times instead of 5 which shows that loop parameters can be changed in the loop and change can affect loop control.
int m=5;
for(int i = 0; i < m; i++)
{
    print("element(loop parameter change control)");
    m = 3;
}

print("\n");

print("----------Evaluation of Loop Parameters----------\n\n");

print("Changing Loop Control Variables & Parameters section showed that changes on loop parameters in the loop have affects on loop varible. So loop parameters are evaluated once for every iteration in Dart. ");

}