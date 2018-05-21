Script started on Wed 29 Mar 2017 09:09:12 AM EDT
ajs94@boole:~/CS214/labs/lab07$ catName     NameTer ster.java Name.a java
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Aaron Santucci
 * Date: March 29, 2017
 ************************************************************/

public class NameTester  
{
	public static void main(String[] args)
	{
		Name aName = new Name("John", "Paul", "Jones");

		assert aName.getFirst().equals("John") ;
		assert aName.getMiddle().equals("Paul") ;
		assert aName.getLast().equals("Jones") ;

		System.out.println(aName);
		assert aName.toString().equals("John Paul Jones");

		System.out.println("All tests passed!");
	}
}


public class Name 
{
	private String myFirst,
		myMiddle,
		myLast;
	
	public Name(String first, String middle, String last)
	{
		myFirst = first;
		myMiddle = middle;
		myLast = last;
	}
	
	public String toString()
	{
		return myFirst + ' ' + myMiddle + ' ' + myLast;
	}
	
	public String getFirst()	{
		return myFirst;	}
	
	public String getMiddle()	{
		return myMiddle;	}
	
	public String getLast()	{
		return myLast;	}
	
}ajs94@boole:~/CS214/labs/lab07$ make java
make: Nothing to be done for 'java'.
ajs94@boole:~/CS214/labs/lab07$ java Name  t Tester
John Paul Jones
All tests passed!
ajs94@boole:~/CS214/labs/lab07$ exit

Script done on Wed 29 Mar 2017 09:10:02 AM EDT
