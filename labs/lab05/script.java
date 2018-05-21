Script started on Wed 01 Mar 2017 09:11:56 AM EST
ajs94@chomsky:~/CS214/labs/lab05$ cat scr   Split.java
/* Split.java is a class and program that splits a string
 * into two substrings.
 * 
 * Begun by: Serita Nelesen
 * Completed by: Aaron Santucci ajs94
 ***************************************************************/

import java.util.Scanner;

// java class Split
public class Split
{
  // main program
  public static void main(String[] args)
    {
      Scanner keyboard = new Scanner(System.in);
      // prompt for the string
      System.out.println("\nTo split a string, enter the string: ");
      String theString = keyboard.next();
      
      // prompt for splitting position
      System.out.println("\nEnter the split position: ");
      int position = keyboard.nextInt();

      //Create list, compute results and print
      String [] resultList = new String[2];
      splitter(theString, position, resultList);
      System.out.println("\nThe first part is " + resultList[0] + "\n and the second part is " + resultList[1]);
      
    }
  
  /* splitter() splits a string according to the position specified
   * Receive: 	theString - the string to be split
   * 		pos - the position at which to split
   *            resList - an array of strings in which to place results
   *****************************************************/
  public static void splitter(String theString, int pos, String[] results)
    {
      results[0] = theString.substring(0, pos);
      results[1] = theString.substring(pos, theString.length());
    }


}
ajs94@chomsky:~/CS214/labs/lab05$ sc  java Scpl   pl    c -dec precation Split.java
ajs94@chomsky:~/CS214/labs/lab05$ java Splity 

To split a string, enter the string: 
hello

Enter the split position: 

0

The first part is 
 and the second part is hello
ajs94@chomsky:~/CS214/labs/lab05$ java Split

To split a string, enter the string: 
hello

Enter the split position: 
3

The first part is hel
 and the second part is lo
ajs94@chomsky:~/CS214/labs/lab05$ java Split

To split a string, enter the string: 
5

Enter the split position: 
whoops
Exception in thread "main" java.util.InputMismatchException
	at java.util.Scanner.throwFor(Scanner.java:864)
	at java.util.Scanner.next(Scanner.java:1485)
	at java.util.Scanner.nextInt(Scanner.java:2117)
	at java.util.Scanner.nextInt(Scanner.java:2076)
	at Split.main(Split.java:23)
ajs94@chomsky:~/CS214/labs/lab05$ java Split

To split a string, enter the string: 
hello

Enter the split position: 
5

The first part is hello
 and the second part is 
ajs94@chomsky:~/CS214/labs/lab05$ exit

Script done on Wed 01 Mar 2017 09:13:42 AM EST
