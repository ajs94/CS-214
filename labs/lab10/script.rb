Script started on Mon 01 May 2017 01:37:42 PM EDT
ajs94@boole:~/CS214/labs/lab10/ruby$ cat bids.rb     rds.rb bi  Bird.rb Owl.rb Duck.rb Q Goose.r b
# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Aaron Santucci
# Date: April 28, 2017
######################################################

require './Bird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

puts "\n\n"# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Aaron Santucci
# Date: April 28, 2017
####################################################

class Bird

  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  def call
    'Squaaaaaaaaak!'
  end
  
  def className
    self.class.to_s
  end
  
  def print
    puts name + className + " says " + call
  end

end
# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Aaron Santucci
# Date: April 28, 2017
####################################################

require './Bird.rb'

class Owl < Bird

  def call
    'Hoot!'
  end
  
  def className
    self.class.to_s
  end
  
  def print
    puts name + className + " says " + call
  end
  
end
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
# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Aaron Santucci
# Date: April 28, 2017
####################################################

require './Bird.rb'

class Goose < Bird

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
ajs94@boole:~/CS214/labs/lab10/ruby$ ruby Bi  birds.rb

Welcome to the Bird Park!

HawkeyeBird says Squaaaaaaaaak!
DonaldDuck says Quack!
MotherGoose says Quack!
WoodseyOwl says Hoot!


ajs94@boole:~/CS214/labs/lab10/ruby$ exit

Script done on Mon 01 May 2017 01:38:17 PM EDT
