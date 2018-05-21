Script started on Tue 07 Mar 2017 03:48:43 PM EST
ajs94@hopper:~/CS214/projects/proj05$ cat quadratic_root.rb
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

mainajs94@hopper:~/CS214/projects/proj05$ ruby quadrac tic_root.rb
Enter the value for a: 5
Enter the value for b: 10
Enter the value for c: 2
The roots are -0.2254033307585166
 and -1.7745966692414832
ajs94@hopper:~/CS214/projects/proj05$ ruby quadratic_root.rb
Enter the value for a: 4
Enter the value for b: 5
Enter the value for c: 1
The roots are -0.25
 and -1.0
ajs94@hopper:~/CS214/projects/proj05$ ruby quadratic_root.rb
Enter the value for a: 2
Enter the value for b: 4
Enter the value for c: 0
The roots are 0.0
 and -2.0
ajs94@hopper:~/CS214/projects/proj05$ exit

Script done on Tue 07 Mar 2017 03:49:17 PM EST
