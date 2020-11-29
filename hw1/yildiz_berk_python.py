#some lines are commented in sake of execution.
print("----------Types For Legal Subscripts----------\n")
books = ["book1", "book2", "book3", "book4"]
print(books[0]) #output: book1
print("\n")
a=1
print(books[a]) #output: book2
print("\n")
c = "a"
#print(books[c]) #output: TypeError: list indices must be integers or slices, not str
print("\n")
print("----------Range Check----------\n")
#print(books[5]) #output: IndexError: list index out of range
#print("\n")
print("----------Ragged & Rectangular Multidimensioned Arrays----------\n\n")
print("Example for ragged array:\n")
ragged = [[10, 20, 30], [10, 20]]
print(ragged) #output: [[10, 20, 30], [10, 20]]
print("\n")
print("\nExample for artificial multidimensional array: \n")
mDimension = [
   ["a", 10, 1000],
   ["b", 20, 2000],
   ["c", 30, 3000],
   ["d", 40, 4000],
]
print("mDimension[1][1] = " , mDimension[1][1]) #output: 20
print("----------Array Initialization----------\n")
init = ["Arrays ", "can ", "be ", "initialized ", "in ", "JavaScript."]
print(init) #output: Arrays ,can ,be ,initialized ,in ,JavaScript.
print("\n\n----------Array Slice----------\n")
print("First way by using slice():\n")
sliceExample = ["Slice ", "is ", "supported ", "in ", "JavaScript"]
sliced = slice(2, 5)
print(sliceExample[sliced], "\n") #output: ['supported ', 'in ', 'JavaScript']
print("Second way:\n")
sliced = sliceExample[2:5] #output: ['supported ', 'in ', 'JavaScript']
print(sliced)
print("\n\n----------Array Operations----------\n\n")
print("Append: ")
first = [1, 2, 3]
print("Before calling function: ", first) #output: [1, 2, 3]
first.append(4)
print("After calling function: ", first) #output: [1, 2, 3, 4]
print("Insert: ")
print("Before calling function: ", first) #output: [1, 2, 3, 4]
first.insert(2, 5)
print("After calling function: ", first) #output: [1, 2, 5, 3, 4]
print("Sort: ")
second = [23, 10, 9, 87, 1]
print("Before calling function: ", second) #output: [23, 10, 9, 87, 1]
second.sort()
print("After calling function: ", second) #output: [1, 9, 10, 23, 87]
print("Sum: ")
print("Sum of the elements in the list is", sum(second))
print("\n\n----------Associative Array----------\n")
#actually dictionary
capitals = {'Turkey': 'Ankara', 'UK': 'London', 'France': 'Paris'}
print(capitals) #output: {'Russia': 'Moscow', 'Ukraine': 'Kiev', 'USA': 'Washington'}

