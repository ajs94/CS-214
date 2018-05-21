Script started on Tue 14 Mar 2017 03:36:53 PM EDT
ajs94@chomsky:~/CS214/projects/proj06$ cat array_process.rb
# array_process.java creates an array and fill it with input 
#
# Student Name: Aaron Santucci ajs94
# Date: March 14, 2017
#
# Receive array size and values as input and print the values given
########################################################

###############################################
# printArray() prints out a given array
# receive: double anArray; an array of doubles to be printed
################################################
def printArray (anArray) 
  anArray.each { |x| print x," " }
end

# readArray() receives the values for a given array of a given size;
# receive: 	anArray: an array of doubles
#           size: an integer
# return: theArray now filled with input from user
################################################
def readArray (anArray, size)
  puts "Enter the values of the array: "
  for i in 0..size-1 do
    anArray[i] = gets.to_f
  end
  printArray(anArray)
end

def main
  puts "Enter the size of the array: "
  size = gets.to_i
  anArray = Array.new(size)
  readArray(anArray, size)
end

main

ajs94@chomsky:~/CS214/projects/proj06$ cat array_process.rbjava ArrayProcessingcat array_process.rb[Kruby array_process.rb
Enter the size of the array: 
7
Enter the values of the array: 
1
2
3
4
5
6
7
1.0 2.0 3.0 4.0 5.0 6.0 7.0 ajs94@chomsky:~/CS214/projects/proj06$ ruby array_process.rb
Enter the size of the array: 
5
Enter the values of the array: 
1
3
5
7
13
1.0 3.0 5.0 7.0 13.0 ajs94@chomsky:~/CS214/projects/proj06$ exit

Script done on Tue 14 Mar 2017 03:37:41 PM EDT
