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
  
end