# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Aaron Santucci
# Date: April 28, 2017
####################################################

require './Bird.rb'

class Duck < Bird

  def call
    'Quack!'
  end
  
  def className
    self.class.to_s
  end
  
  def print
    puts name + className + " says " + call
  end
  
end
