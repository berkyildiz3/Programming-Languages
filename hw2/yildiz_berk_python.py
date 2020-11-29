#Some lines are commented in sake of execution
print("----------Types of Loop Control Variables----------\n")
print("For Loop: Integers can be loop control variable \n")

#print 5 times with integer control variable i
i=0
for i in range(i, 5):
  print("element(for - integer)")
print("\n")

#throws error: TypeError: range() integer start argument expected, got float.
#i=0.0
#for i in range(i, 1, 0.2):
#  print("element(for - float)")
#print("\n")

#throws error: TypeError: range() integer start argument expected, got str.
#i="a"
#for i in range(i, 5):
#  print("element(for - str)")
#print("\n")

print("While Loop: Integers, floats, strings and booleans can be loop control variables \n")

#print 5 times with integer control variable j
j = 0
while (j < 5):
   print "element(while - integer)"
   j+=1;
print("\n")

#print 5 times with float control variable j
j = 0.0
while (j < 1):
   print "element(while - float)"
   j+=0.2;
print("\n")

#print 2 times (1 iteration) with boolean control variable j
j = True 
while (j != False): 
    print("element(while-boolean)") 
    print("element(while-boolean)") 
    j=False 
print("\n")

#print 2 times (1 iteration) with string control variable j
while (j != "b"): 
    print("element(while-string)") 
    print("element(while-string)") 
    j="b" 
print("\n")

print("----------Scopes of Loop Control Variables----------\n")

#Control for scope of value i
i=0
for i in range(i, 5):
    x = ("element(for - integer)")


print("Value of i (from for loop) is: ",  i,  " => Scope of i is not limited with loop. In this case, it is a global variable.")


#Control for scope of value j
j = "a"
while (j != "b"): 
    j="b" 

print("Value of j (from while loop) is: " , j , " => Scope of j is not limited with loop. In this case, it is a global variable.")
print("\n")

print("----------Changing Loop Control Variables & Parameters----------\n")

#Prints 5 times instead of 1 which shows that even loop control variable can be changed in the loop, this change does not have affect on loop control.
i = 0
for i in range(i, 5):
  print("element(variable change control)")
  i = 3
print("\n")


#Prints 5 times instead of 3 which shows that even loop parameters can be changed in the loop, this change does not have affect on loop control.
i=0
m=5
for i in range(i, m):
    print("element(loop parameter change control)")
    m = 3
print "\n"

print("----------Evaluation of Loop Parameters----------\n")

print("Changing Loop Control Variables & Parameters section showed that changes on loop parameters in the loop do not have any affect on loop. So loop parameters are evaluated only once before the loop in Python.")
