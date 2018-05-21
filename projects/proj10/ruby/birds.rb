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

puts "\n\n"