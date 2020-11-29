<html>
<html>
<head>
<title>Online PHP Script Execution</title>
</head>
<body>
<?php
   //some lines are comented in sake of execution
   echo "----------Types For Legal Subscripts----------\n";
   $books = array("book1", "book2", "book3", "book4");
   echo $books[0] , "\n"; //output: book1
   $a=1;
   echo $books[$a] , "\n"; //output: book2
   $b="c";
   //echo $books[$b] , "\n"; //output: PHP Notice:  Undefined index: c
   echo "----------Range Check----------\n";
   //echo ($books[5]); //output: Undefined offset: 5
   echo "There is range check!\n";
   //echo($books[-1]); //output: Undefined offset: -1
   echo("----------Ragged & Rectangular Multidimensioned Arrays----------\n");
   //It is like array of arrays.
   $mDimension = array
  (
  array("A",10,100),
  array("B",20,200),
  array("C",30,300),
  array("D",40,400)
  );
  
  echo $mDimension[2][2], "\n";
  echo ("----------Array Initialization----------\n");
  $init = array("Arrays ", "can ", "be ", "initialized ", "in ", "PHP.");
  print_r($init); //output: Arrays ,can ,be ,initialized ,in ,PHP.
  echo ("----------Array Slice----------\n");
  $sliceExample = array("Slice ", "is ", "supported ", "in ", "PHP");
  print_r(array_slice($sliceExample,2,5));// output: supported, in, PHP
  echo ("----------Array Operations----------\n");
  echo ("Union: \n");
  $first = array(1 => "a", 2 => "b");  
  $second = array(3 => "c", 4 => "d");  
  print_r($first + $second); //output is the union of two arrays
  echo ("Equality: \n");
  var_dump($first == $second);//output is false because arrays have different pairs
  echo ("Identity: \n");
  $test1 = array(1 => "a", 2 => "b");  
  $test2 = array(1 => "a", 2 => "b");  
  var_dump($test1 === $test2); //output is true because arrays have same paris in same orders
  echo ("Inequality: \n");
  var_dump($first != $second); //output is treu because arrays are not same
  echo ("Non-identity: \n");
  var_dump($test1 !== $test2); //output is false because arrays are identical
  echo "----------Associative Array----------\n";
  $test = array("a"=>"10", "b"=>"20", "c"=>"30");
  print_r($test); 
   
?>
</body>
</html>