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

