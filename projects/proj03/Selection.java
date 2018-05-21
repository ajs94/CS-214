/* Selection.java returns the corresponding letter grade of a given average
 * 
 * Completed by: Aaron Santucci ajs94
 * Date: February 17, 2017
 ************************************************************/

import java.util.Scanner;

public class Selection {

	public static void main(String[] args) {
		Scanner keyboard = new Scanner(System.in);
		System.out.println("\nEnter the average grade: "); // prompt

		int average = Integer.parseInt(keyboard.next());       // read in the average 
		System.out.println(letterGrade(average)); // display its letter grade
	}
	
	/***************************************************************
	* letterGrade converts an integer average to its corresponding char letter grade.
	* 
	* Param: average, an int
	* PRE: average is greater than or equal to 0 and less than 101
	* Return: the char of the corresponding average 
	*/
	public static char letterGrade(int average) {
		switch (average / 10)
		{
			case 10: case 9: 
				return 'A';
			case 8:
				return 'B';
			case 7:
				return 'C';
			case 6:
				return 'D';
			default:
				return 'F';
		}
	}
}
