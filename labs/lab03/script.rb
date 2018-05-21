Script started on Wed 15 Feb 2017 01:33:51 PM EST
ajs94@aiken:~/CS214/labs/lab03$ ca  t year codes.rb
cat: year: No such file or directory
cat: codes.rb: No such file or directory
ajs94@aiken:~/CS214/labs/lab03$ cat year codes.rb[1P[1@_
#! /usr/bin/ruby
# year_codes.rb translates an academic year into a numeric code
# Begun by: Dr. Nelesen, for CS 214 at Calvin College 
# Completed by: Aaron Santucci ajs94
# Date: February 15, 2017
################################################################

# Input:  The name of an academic year
# Precondition: The academic year is a string with a value of freshman, 
#   sophomore, junior or senior
# Output: The corresponding integer code for the given academic year

def yearCode(year)
	if year =~ /freshman/ then
		return 1
	elsif year =~ /sophomore/ then 
		return 2
	elsif year =~ /junior/ then
		return 3
	elsif year =~ /senior/ then
		return 4
	else
		return 0
	end
end

if __FILE__ == $0
   print "Enter the year: "
   year = gets
   print "Numeric code is: "
   puts yearCode(year)
end


ajs94@aiken:~/CS214/labs/lab03$ cat year_codes.rb codes.rb[1@ruby year_codes.rb
Enter the year: freshman
Numeric code is: 1
ajs94@aiken:~/CS214/labs/lab03$ ruby year_codes.rb
Enter the year: sophomore
Numeric code is: 2
ajs94@aiken:~/CS214/labs/lab03$ ruby year_codes.rb
Enter the year: junior
Numeric code is: 3
ajs94@aiken:~/CS214/labs/lab03$ ruby year_codes.rbs 
Enter the year: senior
Numeric code is: 4
ajs94@aiken:~/CS214/labs/lab03$ ruby year_codes.rb
Enter the year: asdf
Numeric code is: 0
ajs94@aiken:~/CS214/labs/lab03$ exit

Script done on Wed 15 Feb 2017 01:34:39 PM EST
