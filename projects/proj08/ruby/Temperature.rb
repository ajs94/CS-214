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
end