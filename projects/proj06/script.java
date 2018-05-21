Script started on Tue 14 Mar 2017 01:55:58 PM EDT
ajs94@chomsky:~/CS214/projects/proj06$ car t ArrayProcessing.java
/* ArrayProcessing.java 
 *
 * Student Name: Aaron Santucci ajs94
 * Date: March 14, 2017
 *
 * Receive array size and values as input and print the values given
 *
 ***************************************************************/

import java.io.*;
import java.util.Scanner;

public class ArrayProcessing
{
  public static void main(String[] args) 
  {
	  Scanner keyboard = new Scanner(System.in);
      // prompt for the string
      System.out.println("\nEnter the size of the array: ");
	  
      int size = Integer.parseInt(keyboard.next());
	  double[] theArray = new double[size];
	  
	  theArray = readArray(theArray, theArray.length, keyboard);
	  printArray(theArray);
  }
  

  /* printArray() prints out a given array
   * receive: double[] theArray; an array of double to be printed
   ************************************************************/

	public static void printArray(double[] theArray)
	{
		for (int i=0; i < theArray.length; i++)
			System.out.print(theArray[i] + " ");
	}
  

  /* readArray() receives the values for a given array of a given size;
   * receive: 	theArray: an array of doubles
   *			size: an integer
   *			keyboard: Scanner keyboard for input
   * return: theArray now filled with input from user
   **************************************************************/
  
   public static double[] readArray(double theArray[], int size, Scanner keyboard)
   {
		System.out.println("\nEnter the values for the array: ");
	   
		for (int i=0; i < size; i++)
			theArray[i] = Double.parseDouble(keyboard.next());
	   
	   return theArray;
	   
   }

}

ajs94@chomsky:~/CS214/projects/proj06$ javac -deprecatioin ArrayProcessing.java
javac: invalid flag: -deprecatioin
Usage: javac <options> <source files>
use -help for a list of possible options
ajs94@chomsky:~/CS214/projects/proj06$ javac -deprecatioin ArrayProcessing.javai[1P
ajs94@chomsky:~/CS214/projects/proj06$ java Array  Processingjava    

Enter the size of the array: 
7

Enter the values for the array: 
1
2
3
4
5
6
7
1.0 2.0 3.0 4.0 5.0 6.0 7.0 ajs94@chomsky:~/CS214/projects/proj06$ java ArrayProcessing[Kjava ArrayProcessing[K
ajs94@chomsky:~/CS214/projects/proj06$ java ArrayProcessing

Enter the size of the array: 
4

Enter the values for the array: 
1
3
5
7
1.0 3.0 5.0 7.0 ajs94@chomsky:~/CS214/projects/proj06$ exit

Script done on Tue 14 Mar 2017 01:57:41 PM EDT
