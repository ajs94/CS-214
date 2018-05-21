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
end