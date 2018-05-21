Script started on Tue 11 Apr 2017 09:07:41 PM EDT
ajs94@noyce-kilby:~/CS214/projects/proj08/ruby$ cat tempe Tester.rb Temperature.rb
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
# Temperature.rb contains the temperature module for ruby
#
# By: Aaron Santucci
# Date: April 11, 2017
##########################################################

module Temperature
  class Temperature
    
    def initialize (degree, scale)
      @degrees, @scale = degree, scale
    end
    
    # get metods for temperature
    attr_accessor :degrees, :scale
    
    def validScale(aScale)
    end
    
    # converter methods for the temperature class
    # return: the respective double temperature
    ######################################################
    def getFahren
      if @scale.casecmp('F') == 0
        return @degrees
      elsif @scale.casecmp('C') == 0
        return ((@degrees - 32) * 5 ) / 9
      elsif @scale.casecmp('K') == 0
        return ((@degrees * 9) / 5 ) - 459.67
      else
        return 0
      end
    end
    
    def getCelcius
      if @scale.casecmp('C') == 0
        return @degrees
      elsif @scale.casecmp('F') == 0
        return ((@degrees - 32) * 5 ) / 9
      elsif @scale.casecmp('K') == 0
        return @degrees - 273.15
      else
        return 0
      end
    end
    
    def getKelvin
      if @scale.casecmp('K') == 0
        return @degrees
      elsif @scale.casecmp('F') == 0
        return ((@degrees + 459.67) * 5 ) / 9
      elsif @scale.casecmp('C') == 0
        return @degrees - 273.15
      else
        return 0
      end
    end

    # raiseDegrees(degree) increases @degrees by a float degree
    # param: degree: the number added to @degrees
    ######################################################
    def raiseDegrees(degree)
      @degrees = @degrees + degree
    end
    
    # lowerDegrees(degree) decreases @degrees by a float degree
    # param: degree: the number subtracted from @degrees
    ######################################################
    def lowerDegrees(degree)
      @degrees = @degrees - degree
    end
    
    # equals() checks if two Temperature objects are equal in Degrees
    # param: Temperature temp: the right hand operand
	  # return: boolean of equality operator for their degrees
    ######################################################
    def equal(aTemp)
      if @scale.casecmp('F') == 0
        return @degrees == aTemp.getFahren()
      elsif @scale.casecmp('C') == 0
        return @degrees == aTemp.getCelcius()
      elsif @scale.casecmp('K') == 0
        return @degrees == aTemp.getKelvin()
      else
        return false
      end
    end
    
    # lessThan() checks if this Temperature is less than another
	  # param: Temperature temp: the right hand operand
	  # return: boolean of the less than operator for their degrees
    ######################################################
    def lessThan(aTemp)
      if @scale.casecmp('F') == 0
        return @degrees < aTemp.getFahren()
      elsif @scale.casecmp('C') == 0
        return @degrees < aTemp.getCelcius()
      elsif @scale.casecmp('K') == 0
        return @degrees < aTemp.getKelvin()
      else
        return false
      end
    end
      
    
  end
endajs94@noyce-kilby:~/CS214/projects/proj08/ruby$ rub by tempTester.rb
Fahrenheit 0		Celcius -18		Kelvin 255.3722222222222
Fahrenheit 2.5		Celcius -16.38888888888889		Kelvin 256.7611111111111
Fahrenheit 5.0		Celcius -15.0		Kelvin 258.15
Fahrenheit 7.5		Celcius -13.61111111111111		Kelvin 259.5388888888889
Fahrenheit 10.0		Celcius -12.222222222222221		Kelvin 260.92777777777775
Fahrenheit 12.5		Celcius -10.833333333333334		Kelvin 262.31666666666666
Fahrenheit 15.0		Celcius -9.444444444444445		Kelvin 263.7055555555555
Fahrenheit 17.5		Celcius -8.055555555555555		Kelvin 265.09444444444443
Fahrenheit 20.0		Celcius -6.666666666666667		Kelvin 266.48333333333335
Fahrenheit 22.5		Celcius -5.277777777777778		Kelvin 267.8722222222222
Fahrenheit 25.0		Celcius -3.888888888888889		Kelvin 269.2611111111111
Fahrenheit 27.5		Celcius -2.5		Kelvin 270.65
Fahrenheit 30.0		Celcius -1.1111111111111112		Kelvin 272.0388888888889
Fahrenheit 32.5		Celcius 0.2777777777777778		Kelvin 273.42777777777775
Fahrenheit 35.0		Celcius 1.6666666666666667		Kelvin 274.81666666666666

Fahrenheit -459.67		Celcius -273.15		Kelvin 0
Fahrenheit -423.67		Celcius -253.14999999999998		Kelvin 20.0
Fahrenheit -387.67		Celcius -233.14999999999998		Kelvin 40.0
Fahrenheit -351.67		Celcius -213.14999999999998		Kelvin 60.0
Fahrenheit -315.67		Celcius -193.14999999999998		Kelvin 80.0
Fahrenheit -279.67		Celcius -173.14999999999998		Kelvin 100.0
Fahrenheit -243.67000000000002		Celcius -153.14999999999998		Kelvin 120.0
Fahrenheit -207.67000000000002		Celcius -133.14999999999998		Kelvin 140.0
Fahrenheit -171.67000000000002		Celcius -113.14999999999998		Kelvin 160.0
Fahrenheit -135.67000000000002		Celcius -93.14999999999998		Kelvin 180.0
Fahrenheit -99.67000000000002		Celcius -73.14999999999998		Kelvin 200.0
Fahrenheit -63.670000000000016		Celcius -53.14999999999998		Kelvin 220.0
Fahrenheit -27.670000000000016		Celcius -33.14999999999998		Kelvin 240.0
Fahrenheit 8.329999999999984		Celcius -13.149999999999977		Kelvin 260.0
Fahrenheit 44.329999999999984		Celcius 6.850000000000023		Kelvin 280.0
Fahrenheit 80.32999999999998		Celcius 26.850000000000023		Kelvin 300.0
Fahrenheit 116.32999999999998		Celcius 46.85000000000002		Kelvin 320.0
Fahrenheit 152.32999999999998		Celcius 66.85000000000002		Kelvin 340.0
Fahrenheit 188.32999999999998		Celcius 86.85000000000002		Kelvin 360.0
All tests passed!
ajs94@noyce-kilby:~/CS214/projects/proj08/ruby$ exit

Script done on Tue 11 Apr 2017 09:08:18 PM EDT
