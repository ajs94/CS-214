/* YearCodes.java is a driver for function yearCode().
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Aaron Santucci
 * Date: February 15, 2017
 ************************************************************/

import java.util.Scanner;

public class YearCodes {

	public static void main(String[] args) {
		Scanner keyboard = new Scanner(System.in);
		System.out.println("\nEnter your academic year: "); // prompt

		String year = keyboard.next();       // read year 
		System.out.println(yearCode(year)); // display its code
	}

   /***************************************************************
    * yearCode() converts an academic year into its integer code.
    *
    * Receive: year, a string.
    * PRE: year is one of {freshman, sophomore, junior, or senior}.
    * Return: the integer code corresponding to year.
    */

	public static int yearCode(String year) {
		if (year.equals("freshman"))
			return 1;
		else if (year.equals("sophomore"))
			return 2;
		else if (year.equals("junior"))
			return 3;
		else if (year.equals("senior"))
			return 4;
		else
			return 0;
	}

}
