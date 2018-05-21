Script started on Tue 07 Mar 2017 03:45:36 PM EST
ajs94@hopper:~/CS214/projects/proj05$ javac -deprecation Quar dratic.java
ajs94@hopper:~/CS214/projects/proj05$ java Quadrat            cat Quadratic.java\ 
/* Quadratic.java computes the quadriatic of a and b.
 * 
 * Completed by: Aaron Santucci ajs94
 * Date: March 7, 2017
 ***************************************************************/

import java.util.Scanner;

// java class Quadratic

public class Quadratic
{
	public static void main(String[] args)
	{
		Scanner keyboard = new Scanner(System.in);
		double a, b, c;

		// get inputs
		System.out.println("\nEnter the value for a: ");
		a = keyboard.nextDouble();
		System.out.println("\nEnter the value for b: ");
		b = keyboard.nextDouble();
		System.out.println("\nEnter the value for c: ");
		c = keyboard.nextDouble();
		
		double[] results = quadraticRoots(a,b,c);
		System.out.println("The roots for the quadratic equation of these are " + results[0] + " " + results [1] + "\n");
	}
	
	/* quadraticRoots computes the roots of the quadratic equation containing a, b, c
	 * pass by value
	 * parameters: the doubles a, b, c
	 * return: the double array containing the roots of the quadratic equation
	 */
	public static double[] quadraticRoots(double a, double b, double c)
	{
		double[] roots = new double[2];
		if( a != 0)
		{
			double arg = Math.pow(b, 2.0) - 4 * a * c;
			if ( arg >= 0)
			{
				roots[0] = (-b + Math.sqrt(arg))/(2*a);
				roots[1] = (-b - Math.sqrt(arg))/(2*a);
				return roots;
			}
			else 
			{
				System.out.println("***Error: quadraticRoots(): b^2 - 4ac is negative!");
				roots[0] = roots[1] = 0.0;
				return roots;
			}
		}
		else
		{
			System.out.println("***Error: quadraticRoots():: a is zero!");
			roots[0] = roots[1] = 0.0;
			return roots;
		}
	}
}ajs94@hopper:~/CS214/projects/proj05$ cat Quadratic.java[15@javac -deprecation Quadratic.java
ajs94@hopper:~/CS214/projects/proj05$ java Quadratic

Enter the value for a: 
5

Enter the value for b: 
10

Enter the value for c: 
2
The roots for the quadratic equation of these are -0.2254033307585166 -1.7745966692414832

ajs94@hopper:~/CS214/projects/proj05$ java Quadratic

Enter the value for a: 
4

Enter the value for b: 
5

Enter the value for c: 
1
The roots for the quadratic equation of these are -0.25 -1.0

ajs94@hopper:~/CS214/projects/proj05$ java Quadraticc -deprecation Quadratic.java[19P Quadratic

Enter the value for a: 
2

Enter the value for b: 
4

Enter the value for c: 
0
The roots for the quadratic equation of these are 0.0 -2.0

ajs94@hopper:~/CS214/projects/proj05$ exit

Script done on Tue 07 Mar 2017 03:46:53 PM EST
