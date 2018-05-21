/* ArrayProcessing.java creates an array and fill it with input 
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

