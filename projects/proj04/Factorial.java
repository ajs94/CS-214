/* Factorial.java displays the factorial of integer n.
 *
 * Input: integer n; the number taken the factorial of
 * Output: The factorial of an input integer n
 * Completed by: Aaron Santucci ajs94
 ********************************************************/
import java.util.Scanner; 	

class Factorial {

  public static void main(String[] args){
    Scanner keyboard = new Scanner(System.in);
    System.out.println("Enter the number to be taken the factorial of: ");
    double n = keyboard.nextDouble();
    double output = 1;

    //start of for loop/ factorial-ing
    for(int i=2; i <= n; i++)
        output *= i;
    System.out.println("The factorial of " + n + " is " + output);
  }
}