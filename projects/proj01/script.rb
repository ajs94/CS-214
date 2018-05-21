Script started on Mon 06 Feb 2017 03:04:27 PM EST
ajs94@aiken:~/proj01$ cat s rectangle_area.rb
#! /usr/bin/ruby
# rectangle_area.rb computes the area of a rectangle given its width and height
# 
# Input: the width of the rectangle, 
#        the height of the rectangle.
# Precondition: the width and height are not negative
# Output: the area of the rectangle.
#
# Completed by: Aaron Santucci ajs94
# Date: February
###############################################################

# function rectangleArea returns a rectangle's area, given its width and height
# Parameters: r, a number
# Precondition: w, h > 0.
# Returns: the area of a rectangle whose width is w and heigh h.
def rectangleArea(w, h)
    w * h 
end

if __FILE__ == $0
   puts "To compute the area of a rectangle,"
   print " enter its width: "
   width = gets.chomp.to_f
   print " enter its height: "
   height = gets.chomp.to_f
   print "The rectangle's area is: "
   puts rectangleArea(width, height)
endajs94@aiken:~/proj01$ ruby rectangle_area.rb
To compute the area of a rectangle,
 enter its width: 2
 enter its height: 3
The rectangle's area is: 6.0
ajs94@aiken:~/proj01$ ruby rectangle_area.rb
To compute the area of a rectangle,
 enter its width: 5
 enter its height: 12.4 5
The rectangle's area is: 62.5
ajs94@aiken:~/proj01$ 3 ruby rectangle_area.rb
To compute the area of a rectangle,
 enter its width: 3
 enter its height: 3
The rectangle's area is: 9.0
ajs94@aiken:~/proj01$ exit

Script done on Mon 06 Feb 2017 03:05:27 PM EST
