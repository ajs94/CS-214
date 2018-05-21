# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the FlyingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Aaron Santucci
# Date: April 28, 2017
####################################################

require './FlyingBird.rb'

class Owl < FlyingBird

  def call
    'Hoot!'
  end
  
  def className
    self.class.to_s
  end
  
  def print
    puts name + className + ' ' + movement + " by and said " + call
  end
  
end
