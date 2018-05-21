Script started on Wed 03 May 2017 03:05:54 PM EDT
ajs94@aiken:~/CS214/projects/proj10/ruby$ a cat birds.rb bird.rb[1P[1@Bird.rb FlyingBird.rb Wal king. Bird.rb Penguin.rb Ostrich.rb Kiwi.rb
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
require './Penguin.rb'
require './Ostrich.rb'
require './Kiwi.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird1 = Duck.new "Donald"
bird1.print
bird2 = Goose.new "Mother"
bird2.print
bird3 = Owl.new "Woodsey"
bird3.print

bird4 = Penguin.new "Peter"
bird4.print
bird5 = Ostrich.new "Orville"
bird5.print
bird6 = Kiwi.new "Kiki"
bird6.print

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
    puts name + className + ' ' + movement + " by and said " + call
  end
  
  def movement; raise "method missing"; end

end
# FlyingBird.rb | subclass of the Bird class that provide movement type
#
# Completed by: Aaron Santucci
# Date: May 3, 2017
####################################################

require './Bird.rb'

class FlyingBird < Bird
  
  def movement
    return "flew"
  end
  
end
# WalkingBird.rb | subclass of the Bird class that provide movement type
#
# Completed by: Aaron Santucci
# Date: May 3, 2017
####################################################

require './Bird.rb'

class WalkingBird < Bird
  
  def movement
    return "walked"
  end
  
end
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
# Ostrich.rb | Defines the Ostrich class which inherits attributes and methods
#   from the WalkingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Aaron Santucci
# Date: April 28, 2017
####################################################

require './WalkingBird.rb'

class Ostrich < WalkingBird

  def call
    'Snork!'
  end
  
  def className
    self.class.to_s
  end
  
  def print
    puts name + className + ' ' + movement + " by and said " + call
  end
  
end
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
ajs94@aiken:~/CS214/projects/proj10/ruby$ ruby b birds.rb

Welcome to the Bird Park!

DonaldDuck flew by and said Quack!
MotherGoose flew by and said Quack!
WoodseyOwl flew by and said Hoot!
PeterPenguin walked by and said Huh-huh-huh-huuuuh!
OrvilleOstrich walked by and said Snork!
KikiKiwi walked by and said Daka daka daka


ajs94@aiken:~/CS214/projects/proj10/ruby$ exit

Script done on Wed 03 May 2017 03:06:57 PM EDT
