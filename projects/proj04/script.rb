Script started on Tue 28 Feb 2017 02:35:14 PM EST
ajs94@hopper:~/CS214/projects/proj04$ cat factorialRuby.rb
#! /usr/bin/ruby
# factorialRuby.rb computes a factorial
#
# by: Aaron Santucci ajs94
#
# Input:  n the value taken factorial of
# Precondition: The n is positive
# Output: The factorial output of n


if __FILE__ == $0
   print "Enter taken factorial of: "
   n = gets.to_f
   output = 1

   # start of loop
   for i in 2..n
      output = output * i
   end

   puts "The factorial of #{ n } is #{ output } \n"
end

ajs94@hopper:~/CS214/projects/proj04$ ruby factorialRuby
ruby: No such file or directory -- factorialRuby (LoadError)
ajs94@hopper:~/CS214/projects/proj04$ ruby factorialRuby.rb
Enter taken factorial of: 2
The factorial of 2.0 is 2 
ajs94@hopper:~/CS214/projects/proj04$ 5
5: command not found
ajs94@hopper:~/CS214/projects/proj04$ 5ruby factorialRuby.rb
Enter taken factorial of: 5
The factorial of 5.0 is 120 
ajs94@hopper:~/CS214/projects/proj04$ ruby factorialRuby.rb
Enter taken factorial of: 7
The factorial of 7.0 is 5040 
ajs94@hopper:~/CS214/projects/proj04$ exit

Script done on Tue 28 Feb 2017 02:35:58 PM EST
