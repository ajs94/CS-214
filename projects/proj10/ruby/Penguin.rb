# Penguin.rb | Defines the Penguin class which inherits attributes and methods
#   from the WalkingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Aaron Santucci
# Date: April 28, 2017
####################################################

require './WalkingBird.rb'

class Penguin < WalkingBird

  def call
    'Huh-huh-huh-huuuuh!'
  end
  
  def className
    self.class.to_s
  end
  
  def print
    puts name + className + ' ' + movement + " by and said " + call
  end
  
end
