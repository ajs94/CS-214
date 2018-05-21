

/* RectangleArea.java computes the area of a rectangle.
 *
 * Input: The width and height of the rectangle.
 * Precondition: The inputs are positive numbers.
 * Output: The area of the rectangle.
 *
 * Completed by: Aaron Santucci ajs94
 * Date: February 6, 2017
 **********************************************************/


import java.util.Scanner;  // include class for Scanner

public class RectangleArea {

     /* function circleArea() computes a circle's area, given its radius.
      * Parameter: w, a double
      * 	   h, a double
      * Precondition: w and h is not negative.
      * Returns: the area of the rectangle
      */
     public static double rectangleArea(double w, double h) {
        return w * h;
     }
	
  // main program
  public static void main(String[] args) {
      // prompt for inputs width and height
      System.out.println("To compute the area of a rectangle,");

	// get the width
      System.out.print(" enter its height: ");
      // Create a connection named keyboard to standard in
      Scanner keyboard = new Scanner(System.in); 
      //Get the number from the user
      double width = keyboard.nextDouble();

	// get the height
      System.out.print(" enter its width: ");
      //Get the number from the user
      double height = keyboard.nextDouble();

      // output area
      System.out.println("The area is " + rectangleArea(width, height)); 
  } // main method
} // class RectangleArea
