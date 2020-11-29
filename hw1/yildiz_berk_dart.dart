/* Some lines are commented in sake of execution.*/
void main(){
   print("----------Types For Legal Subscripts----------\n");
   var books = ["book1", "book2", "book3"];
   print(books[0]); //output: book1
   var a = "b";
   //print(books[a]); //outputs: Invalid argument(s): b
   print("----------Range Check----------\n");
   //print(books[5]); //output: RangeError: index (5) must be in the range [0..3)
   print("There is range check.");
   print("----------Ragged & Rectangular Multidimensioned Arrays----------\n");
   print("Ragged: ");
   var raggedTest = [1 ,2 ,3, [4, 5]];
   print(raggedTest); //output: [1, 2, 3, [4, 5]]
   print("Multidimensional: ");
  
   //var mdTest = List.generate(4, (i) => List.generate(4, (j) => i + j));
    //print(mdTest);
   print("----------Array Initialization----------\n");
   var init = ["Lists ", "can ", "be ", "initialized ", "in ", "Dart."];
   print(init);
   print("----------Array Slice----------\n");
   var sliceExample = ["Slice ", "is ", "supported ", "in ", "Dart."];
   print(sliceExample.sublist(2,5)); //output: [supported , in , Dart.]
   print ("----------Array Operations----------\n");
   var first = [1, 2, 3, 4, 5, 6, 7];
   print("Reverse: ");
   print(first.reversed.toList()); //reverse the elements of the list
   print("Replace range");
   first.replaceRange(1,4, [5]); //replace the list elements with given number in the given range
   print('$first'); //output: [1, 5, 5, 6, 7] 
   print("Fold: ");
   //print (first.fold(1, (i, j) => i * j)); //output: 1050 (multiplies all elements of the list)
   print("Shuffle: ");
   first.shuffle(); //shuffles the elements of the list
   print('$first');
   print ("----------Associative Array----------\n");
   //there is map type for associative arrays.
   var test = {'a': 10,'b': 20, 'c': 30}; 
   print(test); //output: {a: 10, b: 20, c: 30}
  
  
    
    
}