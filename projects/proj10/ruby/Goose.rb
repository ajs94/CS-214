# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the FlyingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Aaron Santucci
# Date: April 28, 2017
####################################################

require './FlyingBird.rb'

class Goose < FlyingBird

  def call
    'Quack!'
  end
  
  def className
    self.class.to_s
  end
  
  def print
    puts name + className + ' ' + movement + " by and said " + call
  end
  
end
