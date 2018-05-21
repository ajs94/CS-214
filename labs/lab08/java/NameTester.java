/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Aaron Santucci
 * Date: April 5, 2017
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
		
//		aName.readName();
//		System.out.println(aName);
//		System.out.println(aName.lfmi());

		System.out.println("All tests passed!");
	}
}











