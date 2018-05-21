Script started on Wed 05 Apr 2017 02:04:26 PM EDT
ajs94@boole:~/CS214/labs/lab08/ruby$ cat nameTester.rb n Name.rb
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

# Name.rb Contains the Name module
#
# Completed by: Aaron Santuccci
# Date: April 5, 2017
####################################################

module Name
  
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
  
endajs94@boole:~/CS214/labs/lab08/ruby$ ruby NameTester.rb
ruby: No such file or directory -- NameTester.rb (LoadError)
ajs94@boole:~/CS214/labs/lab08/ruby$ ruby NameTester.rb[1P[1@n
John Paul Jones
Aaron Joseph Santucci
Santucci, Aaron J.
All tests passed!
ajs94@boole:~/CS214/labs/lab08/ruby$ exit

Script done on Wed 05 Apr 2017 02:04:54 PM EDT
