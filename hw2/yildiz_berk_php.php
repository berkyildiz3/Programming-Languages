<html>
<head>
<title>HW2</title>
</head>
<body>
<?php
//Some lines are commented in sake of execution
echo("----------Types of Loop Control Variables----------\n\n");
echo("For Loop: Integers and floats can be loop control variable \n\n");

//print 5 times with number control variable i
for($i = 0; $i < 5; $i++)
{
    echo("element(for - integer)\n");
}
echo("\n");

//print 5 times with float control variable i
for($i = 0.0; $i < 1; $i=$i+0.2)
{
    echo("element(for - float)\n");
}
echo("\n");

echo("For-each Loop: All data types can be loop control variable according to element type of an array or map. \n\n");

$letters = array("a", "b", "a", "c", "a");
 
//print 5 times with string control variable key
foreach($letters as $key){
    echo("element(foreach - string)\n");
}

echo("\n");
echo("While Loop: Integers, floats and strings can be loop control variables \n\n");

//print 5 times with integer control variable j
$j = 0; 
while ($j < 5) 
{ 
    echo("element(while-integer)\n"); 
    $j++; 
} 
echo("\n");

//print 5 times with float control variable j
$j = 0.0; 
while ($j < 1) 
{ 
    echo("element(while-float)\n"); 
    $j+=0.2; 
} 
echo("\n");

//print 2 times (1 iteration) with string control variable j
$j = "a";
while ($j != "b") 
{ 
    echo("element(while-string)\n"); 
    echo("element(while-string)\n"); 
    $j="b"; 
}

echo("\n");
//print 2 times (1 iteration) with boolean control variable j
$j = true;
while ($j != false) 
{ 
    echo("element(while-boolean)\n"); 
    echo("element(while-boolean)\n"); 
    $j=false; 
}

echo("\n");

echo("Do-While Loop: Numbers, strings and booleans can be loop control variables \n\n");

echo("\n");

//print 5 times with integer control variable k
$k = 0; 
do 
{ 
    echo("element(doWhile-integer)\n"); 
    $k++; 
} while ($k < 5); 

echo("\n");
echo("\n");

//print 5 times with float control variable k
$k = 0.0; 
do 
{ 
    echo("element(doWhile-float)\n"); 
    $k += 0.2; 
} while ($k < 1); 
echo("\n");

//print 2 times (1 iteration) with string control variable k
$k = "a"; 
do 
{ 
    echo("element(doWhile-string)\n"); 
    echo("element(doWhile-string)\n"); 
    $k="b"; 
} while ($k != "b"); 

echo("\n");

//print 2 times (1 iteration) with boolean control variable k
$k=true;
do 
{ 
    echo("element(doWhile-boolean)\n"); 
    echo("element(doWhile-boolean)\n"); 
    $k=false; 
} while ($k != false); 

echo("\n");

echo("----------Scopes of Loop Control Variables----------\n\n");

//Control for the scope of i
for($i = 0; $i < 5; $i++)
{
    //echo("element(for - integer)\n");
}

echo("Value of i (from for loop) is: $i => Scope of i is not limited with loop. In this case, it is a global variable.");
echo("\n");

//Control for scope of j
$j = "a";
while ($j != "b") 
{ 

    $j="b"; 
}
echo("Value of j (from while loop) is: $j  => Scope of j is not limited with loop. In this case, it is a global variable.");
echo("\n");

echo("----------Changing Loop Control Variables & Parameters----------\n\n");

//Prints just 1 time instead of 5 which shows that loop control variable can be changed in the loop and change can affect loop control.
for($i = 0; $i < 5; $i++)
{
    echo("element(variable change control)\n");
    $i=4;
}

echo("\n");

//prints 3 times instead of 5 which shows that loop parameters can be changed in the loop and change can affect loop control.
$m=5;
for($i = 0; $i < $m; $i++)
{
    echo("element(loop parameter change control)\n");
    $m = 3;
}
echo("\n");

echo("----------Evaluation of Loop Parameters----------\n\n");

echo("Changing Loop Control Variables & Parameters section showed that changes on loop parameters in the loop have affects on loop varible. So loop parameters are evaluated once for every iteration in PHP. ");

?>
</body>
</html>