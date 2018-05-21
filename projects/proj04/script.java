Script started on Tue 28 Feb 2017 02:34:25 PM EST
ajs94@hopper:~/CS214/projects/proj04$ cat Factorial.jaava   va
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
}ajs94@hopper:~/CS214/projects/proj04$ javac 0dep    -deprecation Factorial.java
ajs94@hopper:~/CS214/projects/proj04$ java Factoir  rial
Enter the number to be taken the factorial of: 
2
The factorial of 2.0 is 2.0
ajs94@hopper:~/CS214/projects/proj04$ java Factorial
Enter the number to be taken the factorial of: 
5
The factorial of 5.0 is 120.0
ajs94@hopper:~/CS214/projects/proj04$ java Factorial
Enter the number to be taken the factorial of: 
7
The factorial of 7.0 is 5040.0
ajs94@hopper:~/CS214/projects/proj04$ exit

Script done on Tue 28 Feb 2017 02:35:07 PM EST
