# NameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Aaron Santuccci
# Date: April 5, 2017
####################################################

require 'test/unit/assertions'   # needed for assert
require '/home/ajs94/CS214/labs/lab08/ruby/Name'    # full path bc else an error
include Test::Unit::Assertions


def testName
  name = Name::Name.new("John", "Paul", "Jones")

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
  
#  name.readName
#  name.print
#  puts name.lfmi
  
  print "All tests passed!\n"
end

testName

