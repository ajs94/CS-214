Script started on Mon 10 Apr 2017 03:11:07 PM EDT
ajs94@boole:~/CS214/projects/proj08/java$ cat TempTester.java Tep mperature.java
/* TempTester.java is the temperature class tester program
 * Student: Aaron Santucci
 * Date: April 10, 2017
 ****************************************************************************/


public class TempTester
{
	public static void main (String [] args)
	{
		Temperature baseTemp = new Temperature(0.0, 'F');
		Temperature limitTemp = new Temperature(100.0, 'C');
		double stepValue = 2.5;
	
		System.out.println("\n");
		
		while (baseTemp.lessThan(limitTemp))
		{
			System.out.println("Fahrenheit " + baseTemp.getFahren() + "\t" + "Celcius " + baseTemp.getCelcius() + "\t" + "Kelvin " + baseTemp.getKelvin());
			baseTemp.raise(stepValue);
		}
		
		System.out.println("\n");
		
		baseTemp = new Temperature(0.0, 'K');
		limitTemp = new Temperature(212.0, 'F');
		stepValue = 20.0;
		
		while (baseTemp.lessThan(limitTemp))
		{
			System.out.println("Fahrenheit " + baseTemp.getFahren() + "\t" + "Celcius " + baseTemp.getCelcius() + "\t" + "Kelvin " + baseTemp.getKelvin());
			baseTemp.raise(stepValue);
		}
	}
	
	
}/* Temperature.java is the temperature class
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
	
	
	
	
	ajs94@boole:~/CS214/projects/proj08/java$ javac -deprecation TempTester.java
ajs94@boole:~/CS214/projects/proj08/java$ javac -deprecation TempTester.java[1P[1P[1P[1P[1P[1P[1@e[1@r[1@a[1@t[1@u[1@r[1@e
ajs94@boole:~/CS214/projects/proj08/java$ java TempTester. 


Fahrenheit 0.0	Celcius -17.77777777777778	Kelvin 255.3722222222222
Fahrenheit 2.5	Celcius -16.38888888888889	Kelvin 256.7611111111111
Fahrenheit 5.0	Celcius -15.0	Kelvin 258.15
Fahrenheit 7.5	Celcius -13.61111111111111	Kelvin 259.5388888888889
Fahrenheit 10.0	Celcius -12.222222222222221	Kelvin 260.92777777777775
Fahrenheit 12.5	Celcius -10.833333333333334	Kelvin 262.31666666666666
Fahrenheit 15.0	Celcius -9.444444444444445	Kelvin 263.7055555555555
Fahrenheit 17.5	Celcius -8.055555555555555	Kelvin 265.09444444444443
Fahrenheit 20.0	Celcius -6.666666666666667	Kelvin 266.48333333333335
Fahrenheit 22.5	Celcius -5.277777777777778	Kelvin 267.8722222222222
Fahrenheit 25.0	Celcius -3.888888888888889	Kelvin 269.2611111111111
Fahrenheit 27.5	Celcius -2.5	Kelvin 270.65
Fahrenheit 30.0	Celcius -1.1111111111111112	Kelvin 272.0388888888889
Fahrenheit 32.5	Celcius 0.2777777777777778	Kelvin 273.42777777777775
Fahrenheit 35.0	Celcius 1.6666666666666667	Kelvin 274.81666666666666
Fahrenheit 37.5	Celcius 3.0555555555555554	Kelvin 276.2055555555555


Fahrenheit -459.67	Celcius -273.15	Kelvin 0.0
Fahrenheit -423.67	Celcius -253.14999999999998	Kelvin 20.0
Fahrenheit -387.67	Celcius -233.14999999999998	Kelvin 40.0
Fahrenheit -351.67	Celcius -213.14999999999998	Kelvin 60.0
Fahrenheit -315.67	Celcius -193.14999999999998	Kelvin 80.0
Fahrenheit -279.67	Celcius -173.14999999999998	Kelvin 100.0
Fahrenheit -243.67000000000002	Celcius -153.14999999999998	Kelvin 120.0
Fahrenheit -207.67000000000002	Celcius -133.14999999999998	Kelvin 140.0
Fahrenheit -171.67000000000002	Celcius -113.14999999999998	Kelvin 160.0
Fahrenheit -135.67000000000002	Celcius -93.14999999999998	Kelvin 180.0
Fahrenheit -99.67000000000002	Celcius -73.14999999999998	Kelvin 200.0
Fahrenheit -63.670000000000016	Celcius -53.14999999999998	Kelvin 220.0
Fahrenheit -27.670000000000016	Celcius -33.14999999999998	Kelvin 240.0
Fahrenheit 8.329999999999984	Celcius -13.149999999999977	Kelvin 260.0
Fahrenheit 44.329999999999984	Celcius 6.850000000000023	Kelvin 280.0
Fahrenheit 80.32999999999998	Celcius 26.850000000000023	Kelvin 300.0
Fahrenheit 116.32999999999998	Celcius 46.85000000000002	Kelvin 320.0
Fahrenheit 152.32999999999998	Celcius 66.85000000000002	Kelvin 340.0
Fahrenheit 188.32999999999998	Celcius 86.85000000000002	Kelvin 360.0
ajs94@boole:~/CS214/projects/proj08/java$ exit

Script done on Mon 10 Apr 2017 03:12:17 PM EDT
