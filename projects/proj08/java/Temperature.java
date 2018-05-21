/* Temperature.java is the temperature class
 * Student: Aaron Santucci
 * Date: April 10, 2017
 ****************************************************************************/

import java.util.Arrays;

class Temperature
{
	
	private double myDegrees;
	private char myScale;
	private char[] validScales = {'F', 'C', 'K', 'f', 'c', 'k'};
	
	
	public Temperature (double degrees, char scale)
	{
		if (validScale(scale))
			myScale = scale;
		else {
			System.out.println("Not a valid temperature; setting to default Fahrenheit");
			myScale = 'F';
		}
		
		myDegrees = degrees;
	}
	
	public boolean validScale(char scale)	{
		for (int i=0; i<validScales.length; i++)
		{
			if(scale == validScales[i])
				return true;
		}
		return false;
	}
	
	
	/* printTemp() prints the temperature of the Temperature object
	***********************************************/
	public void printTemp()		{
		System.out.print( myDegrees + " " + myScale);	}
	
						   
	/* getter methods for the temperature class
	 * return: the respective class object
	 ***********************************************/
	public double getDegrees()	{
		return myDegrees;	}
						   
	public char getScale()	{
		return myScale;		}
	
	
	/* converter methods for the Temperature class
	 * return: the respective double temperature
	 ***********************************************/
	public double getFahren()		
	{
		if (myScale == 'F' || myScale == 'f')
			return myDegrees;
		else if (myScale == 'C' || myScale == 'c')
			return ((myDegrees - 32) * 5 ) / 9;
		else if (myScale == 'K' || myScale == 'k')
			return ((myDegrees *9) / 5 ) - 459.67;
		else
			return 0;	
	}
			   
	public double getCelcius()		
	{
		if (myScale == 'C' || myScale == 'c')
			return myDegrees;
		else if (myScale == 'F' || myScale == 'f')
			return ((myDegrees - 32) * 5 ) / 9;
		else if (myScale == 'K' || myScale == 'k')
			return myDegrees - 273.15;
		else
			return 0;	
	}
					   
	public double getKelvin()		
	{
		if (myScale == 'K' || myScale == 'k')
			return myDegrees;
		else if (myScale == 'F' || myScale == 'f')
			return ((myDegrees + 459.67) * 5 ) / 9;
		else if (myScale == 'C' || myScale == 'c')
			return myDegrees - 273.15;
		else
			return 0;	
	}
	
	/* raise(double degrees) increases myDegrees by degrees
	 * param: degrees: the addend to myDegrees
	 ***********************************************/
	public void raise (double degrees)	{
		myDegrees += degrees;	}
	
	/* lower(double degrees) decreases myDegrees by degrees
	 * param: degrees: the number stracted from myDegrees
	 ***********************************************/
	public void lower (double degrees)	{
		myDegrees -= degrees;	}
	
	
	/* equals() checks if two Temperature objects are equal in Degrees
	 * param: Temperature temp: the right hand operand
	 * return: boolean of equality operator for their degrees
	 ***********************************************/
	public boolean equals (Temperature Temp)	
	{
		if (myScale == Temp.myScale)	{
			return (myDegrees == Temp.myDegrees);
		}
		else if (myScale == 'F' || myScale == 'f')	{
			return (myDegrees == Temp.getFahren());
		}
		else if (myScale == 'C' || myScale == 'c')	{
			return (myDegrees == Temp.getCelcius());
		}
		else if (myScale == 'K' || myScale == 'k')	{
			return (myDegrees == Temp.getKelvin());
		}
		else
			return false;
	}
				
	/* lessThan() checks if this Temperature is less than another
	 * param: Temperature temp: the right hand operand
	 * return: boolean of equality operator for their degrees
	 ***********************************************/
	public boolean lessThan (Temperature Temp)	
	{
		if (myScale == Temp.myScale)	{
			return (myDegrees < Temp.myDegrees);
		}
		else if (myScale == 'F' || myScale == 'f')	{
			return (myDegrees < Temp.getFahren());
		}
		else if (myScale == 'C' || myScale == 'c')	{
			return (myDegrees < Temp.getCelcius());
		}
		else if (myScale == 'K' || myScale == 'k')	{
			return (myDegrees < Temp.getKelvin());
		}
		else
			return false;
	}
						   
}
	
	
	
	
	