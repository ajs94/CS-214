Script started on Fri 24 Feb 2017 01:34:03 PM EST
ajs94@aiken:~/CS214/labs/lab04$ javac -deprecation LogTable.java                                cat Logtab   Table.java
/* LogTable.java displays a table of logarithms.
 *
 * Input: start, stop and increment, three doubles.
 * PRE: start < stop && increment > 0.
 * Output: A table of logarithms from start to stop,
 *         with increment as the step value.
 * Begun by: Nelesen, for CS 214 at Calvin College.
 * Completed by: Aaron Santucci ajs94
 ********************************************************/
import java.util.Scanner; 		// Get input

class LogTable{

  public static void main(String[] args){
    Scanner keyboard = new Scanner(System.in);
    System.out.println("To display a table of logarithms,");
    System.out.println("enter the start, stop and increment values: ");
    double start, stop, increment;
    start = keyboard.nextDouble();
    stop = keyboard.nextDouble();
    increment = keyboard.nextDouble();

    // Start of loop
    for (double i=start; i <= stop; i=i+increment)
        System.out.println("The logarithm of " + i + " is " + Math.log(i));
  }
}

ajs94@aiken:~/CS214/labs/lab04$ cat LogTable.java[Kjavac d -deprecation Logt Table.java
ajs94@aiken:~/CS214/labs/lab04$ java LogTable
To display a table of logarithms,
enter the start, stop and increment values: 
1
10
.5
The logarithm of 1.0 is 0.0
The logarithm of 1.5 is 0.4054651081081644
The logarithm of 2.0 is 0.6931471805599453
The logarithm of 2.5 is 0.9162907318741551
The logarithm of 3.0 is 1.0986122886681098
The logarithm of 3.5 is 1.252762968495368
The logarithm of 4.0 is 1.3862943611198906
The logarithm of 4.5 is 1.5040773967762742
The logarithm of 5.0 is 1.6094379124341003
The logarithm of 5.5 is 1.7047480922384253
The logarithm of 6.0 is 1.791759469228055
The logarithm of 6.5 is 1.8718021769015913
The logarithm of 7.0 is 1.9459101490553132
The logarithm of 7.5 is 2.0149030205422647
The logarithm of 8.0 is 2.0794415416798357
The logarithm of 8.5 is 2.1400661634962708
The logarithm of 9.0 is 2.1972245773362196
The logarithm of 9.5 is 2.2512917986064953
The logarithm of 10.0 is 2.302585092994046
ajs94@aiken:~/CS214/labs/lab04$ exit

Script done on Fri 24 Feb 2017 01:35:14 PM EST
