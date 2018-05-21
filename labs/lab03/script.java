Script started on Wed 15 Feb 2017 01:35:06 PM EST
ajs94@aiken:~/CS214/labs/lab03$ cat YearCodes.Jav   java
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
ajs94@aiken:~/CS214/labs/lab03$ java -  deprecation YearCodes.java
Unrecognized option: -deprecation
Error: Could not create the Java Virtual Machine.
Error: A fatal exception has occurred. Program will exit.
ajs94@aiken:~/CS214/labs/lab03$ java -deprecation YearCodes.javaa[1@c
ajs94@aiken:~/CS214/labs/lab03$ java YearCodes

Enter your academic year: 
fresha man
1
ajs94@aiken:~/CS214/labs/lab03$ java YearCodes

Enter your academic year: 
sophomore
2
ajs94@aiken:~/CS214/labs/lab03$ java YearCodes

Enter your academic year: 
junior
3
ajs94@aiken:~/CS214/labs/lab03$ java YearCodes

Enter your academic year: 
senior
4
ajs94@aiken:~/CS214/labs/lab03$ java YearCodes

Enter your academic year: 
asdf
0
ajs94@aiken:~/CS214/labs/lab03$ exit

Script done on Wed 15 Feb 2017 01:36:45 PM EST
