/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Aaron Santucci
 * Date: April 4, 2017
 ************************************************************/

import java.util.Scanner;

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
		
		// project tests
		aName.changeFirst("Aaron");
		aName.changeMiddle("Joseph");
		aName.changeLast("Santucci");
		
		assert aName.getFirst().equals("Aaron") ;
		assert aName.getMiddle().equals("Joseph");
		assert aName.getLast().equals("Santucci");
		
		System.out.println(aName);
		System.out.println(aName.lfmi());
		assert aName.lfmi().equals("Santucci, Aaron J.");
		
		aName.readName();
		System.out.println(aName);
		System.out.println(aName.lfmi());

		System.out.println("All tests passed!");
	}
}



class Name 
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
	
	// return in form "Last, First MiddleInitial."
	public String lfmi() {
		return myLast + ", " + myFirst + " " + myMiddle.charAt(0) + ".";	
	}
	
	// readName method to read in characters
	public void readName()
	{
		Scanner keyboard = new Scanner(System.in);
		System.out.println("\nEnter the first, middle, and last names: ");
      	myFirst = keyboard.next();
		myMiddle = keyboard.next();
      	myLast = keyboard.next();
	}
	
	// getter methods
	public String getFirst()	{
		return myFirst;		}
	
	public String getMiddle()	{
		return myMiddle;	}
	
	public String getLast()	{
		return myLast;		}
	
	// mutator methods
	public void changeFirst(String aFirst) {
		myFirst = aFirst;	}
	
	public void changeMiddle(String aMiddle) {
		myMiddle = aMiddle;	}
	
	public void changeLast(String aLast) {
		myLast = aLast;	}
	
}









