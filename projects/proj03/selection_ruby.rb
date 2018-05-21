#! /usr/bin/ruby
# selection_ruby.rb returns the corresponding letter grade of a given average
# Completed by: Aaron Santucci ajs94
# Date: February 20, 2017

# Input:  grade to be average into letter
# Precondition: The grade less than 101 and greater or equal to 0
# Output: The corresponding letter grade of the average

def letterGrade(average)
	average = average.to_i
	case (average/10)
		when 10, 9 then "A"
		when 8 then "B"
		when 7 then "C"
		when 6 then "D"
		else "D"
	end
end

if __FILE__ == $0
   print "Enter the average: "
   average = gets
   print "Letter grade is: "
   puts letterGrade(average)
end