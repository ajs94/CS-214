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
	
	
}