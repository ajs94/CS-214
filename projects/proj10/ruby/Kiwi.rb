# Kiwi.rb | Defines the Kiwi class which inherits attributes and methods
#   from the WalkingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Aaron Santucci
# Date: April 28, 2017
####################################################

require './WalkingBird.rb'

class Kiwi < WalkingBird

  def call
    'Daka daka daka'
  end
  
  def className
    self.class.to_s
  end
  
  def print
    puts name + className + ' ' + movement + " by and said " + call
  end
  
end
