Script started on Mon 06 Feb 2017 01:37:18 PM EST
ajs94@aiken:~/proj01$ cat re  RectangleArea.java


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
ajs94@aiken:~/proj01$ javac -  dec precation RectangleArea.java
ajs94@aiken:~/proj01$ java RectanlgeArea
Error: Could not find or load main class RectanlgeArea
ajs94@aiken:~/proj01$ java RectanlgeArea[19@c -deprecation RectangleArea.javaajs94@aiken:~/proj01$ [15Pcat RectangleArea.java[4Pa2ps script.e-lispcat RectangleArea.java[4Pa2ps script.e-lisp[11Pemacs &a2ps lab01-results[11Pemacs &a2ps script.e-lispcat RectangleArea.java[15@javac -deprecation RectangleArea.javaajs94@aiken:~/proj01$ [15Pcat RectangleArea.java[4Pa2ps script.e-lisp[11Pemacs &a2ps lab01-resultscat script.java script.ada script.e-lisp script.ruby > lab001-results[An:~/proj01$ a2ps lab01-results[K
[K[Aajs94@aiken:~/proj01$ a2ps lab01-results[11Pemacs &a2ps script.e-lispcat RectangleArea.java[15@javac -deprecation RectangleArea.javaajs94@aiken:~/proj01$ java[19P RectanlgeArea[Kjava RectangleArea
To compute the area of a rectangle,
 enter its height: 2.5
 enter its width: 4
The area is 10.0
ajs94@aiken:~/proj01$ java RectangleArea
To compute the area of a rectangle,
 enter its height: 12
 enter its width: 3.5
The area is 42.0
ajs94@aiken:~/proj01$ java RectangleArea
To compute the area of a rectangle,
 enter its height: 5
 enter its width: 5
The area is 25.0
ajs94@aiken:~/proj01$ exit

Script done on Mon 06 Feb 2017 01:39:23 PM EST
