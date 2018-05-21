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

