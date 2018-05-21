# TempTester.rb test the Temperature module
#
# By: Aaron Santucci
# Date: April 11, 2017
##########################################################

require '/home/ajs94/CS214/projects/proj08/ruby/Temperature'

def testTemperature
  
  # test 1
  baseTemp = Temperature::Temperature.new(0, 'F')
  limitTemp = Temperature::Temperature.new(100, 'C')
  stepValue = 2.5
  
  while baseTemp.lessThan(limitTemp)
    puts("Fahrenheit #{baseTemp.getFahren}\t\tCelcius #{baseTemp.getCelcius}\t\tKelvin #{baseTemp.getKelvin}")
    baseTemp.raiseDegrees(stepValue)
  end
  
  print "\n"
  
  # test 2
  baseTemp.degrees = 0
  baseTemp.scale = 'K'
  limitTemp.degrees = 212
  limitTemp.scale = 'F'
  stepValue = 20.0
  
  while baseTemp.lessThan(limitTemp)
    puts("Fahrenheit #{baseTemp.getFahren}\t\tCelcius #{baseTemp.getCelcius}\t\tKelvin #{baseTemp.getKelvin}")
    baseTemp.raiseDegrees(stepValue)
  end
  
  print "All tests passed!\n"
end

testTemperature
