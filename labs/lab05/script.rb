Script started on Wed 01 Mar 2017 02:07:18 PM EST
ajs94@hollerith:~/CS214/labs/lab05$ cat split.rb
# split.rb splits a string into two substrings.
#
# Input: A string and an integer string position to split the string by.
# Precondition: The position integer is within the range of the string size.
# Output: The substrings aString(0, position - 1) and
#   aString(pos, length() - 1).
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Aaron Santucci
# Date: March 1, 2017
#################################################################


# split() splits a string into its two substrings.
# Receive: aString, the string to be split,       
#        pos, the split position.                  
# PRE: 0 <= pos < the length of aString.
# Return: the substring of aString before pos, and  
#         the substring of aString from pos onwards.
######################################################

def split(the_string, position)
  results = [the_string[0, position], the_string[position, the_string.length()]]
end



def main
  print "To split a string, enter the string: "; 
  the_string = gets
  print "Enter the split position: "; 
  position = gets.to_i
  split_string = split(the_string, position)
  puts "The first part is: " << split_string[0]
  puts "and the second part is: " << split_string[1]
end

main
ajs94@hollerith:~/CS214/labs/lab05$ ruby split.rb
To split a string, enter the string: hello
Enter the split position: 0
The first part is: 
and the second part is: hello
ajs94@hollerith:~/CS214/labs/lab05$ ruby split.rb
To split a string, enter the string: 3 hello
Enter the split position: 3
The first part is: hel
and the second part is: lo
ajs94@hollerith:~/CS214/labs/lab05$ ruby split.rb
To split a string, enter the string: split     hello
Enter the split position: 5
The first part is: hello
and the second part is: 
ajs94@hollerith:~/CS214/labs/lab05$ exit

Script done on Wed 01 Mar 2017 02:08:06 PM EST
