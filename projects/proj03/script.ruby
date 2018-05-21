Script started on Mon 20 Feb 2017 02:58:49 PM EST
ajs94@aiken:~/CS214/projects/proj03$ cat selection_ruby  by.rb
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
endajs94@aiken:~/CS214/projects/proj03$ ruby selection_ruby.rb
Enter the average: 100
Letter grade is: A
ajs94@aiken:~/CS214/projects/proj03$ ruby selection_ruby.rb
Enter the average: 96
Letter grade is: A
ajs94@aiken:~/CS214/projects/proj03$ ruby selection_ruby.rb
Enter the average: 85
Letter grade is: B
ajs94@aiken:~/CS214/projects/proj03$ ruby selection_ruby.rb
Enter the average: 74
Letter grade is: C
ajs94@aiken:~/CS214/projects/proj03$ ruby selection_ruby.rb
Enter the average: 73
Letter grade is: C
ajs94@aiken:~/CS214/projects/proj03$ ruby selection_ruby.rb
Enter the average: 63
Letter grade is: D
ajs94@aiken:~/CS214/projects/proj03$ ruby selection_ruby.rb
Enter the average: 52
Letter grade is: D
ajs94@aiken:~/CS214/projects/proj03$ exit

Script done on Mon 20 Feb 2017 03:02:29 PM EST
