Script started on Tue 04 Apr 2017 03:49:54 PM EDT
ajs94@hopper:~/CS214/projects/proj07$ cat NameTester.rb
# NameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Aaron Santuccci
# Date: April 4, 2017
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

class Name
  
  def initialize(first, middle, last)
    @first, @middle, @last = first, middle, last
  end
  
  attr_accessor :first, :middle, :last
  
  def lfmi
    @last + ', ' + @first + ' ' + @middle[0,1] + '.'
  end
  
  def readName
    puts "Enter the first, middle, and last names: "
    @first = gets.chomp
    @middle = gets.chomp
    @last = gets.chomp
  end
  
  def fullName
    @first + ' ' + @middle + ' ' + @last
  end
  
  def print
    puts fullName
    @first + ' ' + @middle + ' ' + @last
  end
  
end


def testName
  name = Name.new("John", "Paul", "Jones")

  assert name.first == "John", "first failed"
  assert name.middle == "Paul", "middle failed"
  assert name.last == "Jones", "last failed"
  assert name.fullName == "John Paul Jones", "fullName failed"
  assert name.print == "John Paul Jones", "print failed"

  #project tests
  name.first = "Aaron"
  name.middle = "Joseph"
  name.last = "Santucci"
  
  assert name.first == "Aaron", "first failed"
  assert name.middle == "Joseph", "middle failed"
  assert name.last == "Santucci", "last failed"
  assert name.fullName == "Aaron Joseph Santucci", "fullName failed"
  assert name.print == "Aaron Joseph Santucci", "print failed"
  puts name.lfmi
  assert name.lfmi == "Santucci, Aaron J.", "lfmi failed"
  
  name.readName
  name.print
  puts name.lfmi
  
  print "All tests passed!\n"
end

testName

ajs94@hopper:~/CS214/projects/proj07$ ruby NameTester.rb
John Paul Jones
Aaron Joseph Santucci
Santucci, Aaron J.
Enter the first, middle, and last names: 
Joel
C
Adams
Joel C Adams
Adams, Joel C.
All tests passed!
ajs94@hopper:~/CS214/projects/proj07$ exit

Script done on Tue 04 Apr 2017 03:50:16 PM EDT
