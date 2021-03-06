Script started on Wed 19 Apr 2017 02:54:04 PM EDT
ajs94@dijkstra:~/CS214/projects/proj09/ruby$ max.rb l Luist    istrb  .rb
max.rb: command not found
ajs94@dijkstra:~/CS214/projects/proj09/ruby$ max.rb List.rb[1@c[1@a[1@t[1@ 
# max.rb tests a Ruby linked list.
#
# Begun by: Dr. Adams for CS 214 at Calvin College.
# Completed by: 
# Date: 

require './List'

list1 = List.new
list2 = List.new
list3 = List.new
list4 = List.new

list1.append(99).append(88).append(77).append(66).append(55)
list2.append(55).append(66).append(77).append(88).append(99)
list3.append(55).append(77).append(99).append(88).append(66)
list4.append(11).append(22).append(33).append(44).append(55)

list1.print 
puts
puts "Maximum of list1: #{list1.max}"

list2.print 
puts
puts "Maximum of list2: #{list2.max}"

list3.print 
puts
puts "Maximum of list3: #{list3.max}"

list4.print
puts

# Project 9 testing
puts "Found 99 at position #{list1.search(99)}"
puts "Found 99 at position #{list2.search(99)}"
puts "Found 99 at position #{list3.search(99)}"
puts "Found 99 at position #{list4.search(99)}"

# List.rb implements a linked list structure in Ruby.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by:
# Date:
#######################################################

require 'test/unit/assertions'
include Test::Unit::Assertions

class List

  def initialize
    @first, @last = nil
    @length = 0
  end


   # create reader method for length

   # Replace this line with a statement to define a 'length' reader method


   # Am I empty?
   # Return: length == 0
  def empty?
    @length == 0
  end
  
   # append a value to me
   # Receive: value, the item to be appended
   # Postcondition: my last item is value and
   #                 my length is one more than it was
  def append(value)
    newNode = Node.new(value, nil)

    if empty?
      @first = newNode
    else
      @last.next = newNode      
    end

    @last = newNode
    @length += 1
    self
  end


  # print my items
  # Postcondition: my items have been displayed to the screen
  def print
    temp = @first
    while !temp.nil?
      printf " #{temp.value}"
      temp = temp.next
    end  
  end


  # find my maximum item
  # Return: my maximum item
  def max
    temp = @first
    maxValue = -999999
    while !temp.nil?
      if temp.value > maxValue
        maxValue = temp.value
      end
      temp = temp.next
    end
    return maxValue
  end
      
  # find the position of an integer
  # return: the positon of aValue
  def search(aValue)
    temp = @first
    count = 0
    while !temp.nil?
      if temp.value == aValue
        return count
      end
      count = count + 1
      temp = temp.next
    end
    return -1
  end

  class Node
      def initialize(item, link)
         @value = item
         @next = link
      end

      attr_reader :value
      attr_accessor :next
  end

end

ajs94@dijkstra:~/CS214/projects/proj09/ruby$ ruby max.rb
 99 88 77 66 55
Maximum of list1: 99
 55 66 77 88 99
Maximum of list2: 99
 55 77 99 88 66
Maximum of list3: 99
 11 22 33 44 55
Found 99 at position 0
Found 99 at position 4
Found 99 at position 2
Found 99 at position -1
ajs94@dijkstra:~/CS214/projects/proj09/ruby$ exit

Script done on Wed 19 Apr 2017 02:54:27 PM EDT
