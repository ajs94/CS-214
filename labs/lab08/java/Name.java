/* Name.java implements class Name. 
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Aaron Santucci
 * Date: April 5, 2017
 ************************************************************/

import java.util.Scanner;

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
