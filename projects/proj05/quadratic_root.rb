# quadratic_root.rb computes the quadratic roots of a, b, c
#
# Input: Double a, b, c
# Output: The two roots of the quadratic equation
#
# Completed by: Aaron Santucci ajs94
# Date: March 7, 2017
#################################################################

def quadraticRoots(a, b, c) 
  arg = (b**2) - (4*a*c)
  roots = [ ((-b + Math.sqrt(arg))/(2*a)), ((-b - Math.sqrt(arg))/(2*a)) ]
end

def main
  print "Enter the value for a: "
  a = gets.to_f
  print "Enter the value for b: "
  b = gets.to_f
  print "Enter the value for c: "
  c = gets.to_f
  
  roots = quadraticRoots(a, b, c)
  
  puts "The roots are " << roots[0].to_s
  puts " and " << roots[1].to_s
end

main