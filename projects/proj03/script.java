Script started on Mon 20 Feb 2017 02:52:36 PM EST
ajs94@aiken:~/CS214/projects/proj03$ catS  Selection.java
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
ajs94@aiken:~/CS214/projects/proj03$ javac - dec precation Selection.java
javac: invalid flag: -
Usage: javac <options> <source files>
use -help for a list of possible options
ajs94@aiken:~/CS214/projects/proj03$ javac - deprecation Selection.java [1P
ajs94@aiken:~/CS214/projects/proj03$ javac -deprecation Selection.java
ajs94@aiken:~/CS214/projects/proj03$ java Seld ection

Enter the average grade: 
100
A
ajs94@aiken:~/CS214/projects/proj03$ java Selection

Enter the average grade: 
96
A
ajs94@aiken:~/CS214/projects/proj03$ java Selection

Enter the average grade: 
85
B
ajs94@aiken:~/CS214/projects/proj03$ java Selection

Enter the average grade: 
74
C
ajs94@aiken:~/CS214/projects/proj03$ java Selection

Enter the average grade: 
64 3
D
ajs94@aiken:~/CS214/projects/proj03$ java Selection

Enter the average grade: 
52
F
ajs94@aiken:~/CS214/projects/proj03$ exit

Script done on Mon 20 Feb 2017 02:54:16 PM EST
