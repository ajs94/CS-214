/* Max.java finds the maximum values in Java linked lists.
 *
 * Begun by: Dr. Adams, CS 214 at Calvin College.
 * Completed by: Aaron Santucci
 * Date: April 19, 2017
 */

import java.util.LinkedList;
import java.util.Iterator;
import java.util.Collections;

public class Max {

	public static void main(String [] args) {
		
		LinkedList<Integer> list1 = new LinkedList<Integer>(),
							list2 = new LinkedList<Integer>(),
							list3 = new LinkedList<Integer>(),
							list4 = new LinkedList<Integer>();
		
		list1.add(99);    // 99, 88, 77, 66, 55
		list1.add(88);    // max is first
		list1.add(77);
		list1.add(66);  
		list1.add(55);

		list2.add(55);    // 55, 66, 77, 88, 99
		list2.add(66);    // max is last
		list2.add(77);  
		list2.add(88);  
		list2.add(99);  

		list3.add(55);    // 55, 77, 99, 88, 66
		list3.add(77);    // max is in the middle
		list3.add(99);  
		list3.add(88);  
		list3.add(66);  
		
		list4.add(0);    
		list4.add(1);    
		list4.add(2);  
		list4.add(3);  
		list4.add(4);

	    print(list1); 
	    print(list2); 
	    print(list3);

		System.out.println("Max of list1: " + Collections.max(list1));
		System.out.println("Max of list2: " + Collections.max(list2));
		System.out.println("Max of list3: " + Collections.max(list3));
		
		// *** project 9 testing ***
		assert (search(list1, 99) == 0);
		System.out.println("Found 99 at position " + search(list1, 99) + " in list1");
		assert (search(list2, 99) == 4);
		System.out.println("Found 99 at position " + search(list2, 99) + " in list2");
		assert (search(list3, 99) == 2);
		System.out.println("Found 99 at position " + search(list3, 99) + " in list3");
		assert (search(list4, 99) == -1);
		System.out.println("list4 search return: " + search(list4, 99));
  }

 
	/** print() displays a LinkedList on the console.
     * @param: aList, a LinkedList<Integer>
     * Postcondition: the Integer values in aList
     *                 have been displayed to System.out,
     *                 separated by spaces.
     */ 
	public static void print (LinkedList<Integer> aList)
	{
		Iterator<Integer> listIterator = aList.iterator();
	 	while (listIterator.hasNext())	{
	  		System.out.print(listIterator.next() + " ");
		}
	  	System.out.print('\n');
  	}
	
	/* search() returns the position of a given value in a list
	 * @param: 	aList, a LinkedList<Integer>
	 * 		   	aValue, the integer being searched for
	 * @return: the integer position of aValue; -1 if not in aList 
	 */
	public static int search (LinkedList<Integer>aList, int aValue)
	{
		Iterator<Integer> listIterator = aList.iterator();
		int count = 0;
	 	while (listIterator.hasNext())	{
			if (listIterator.next() == aValue)
				return count;
			count += 1;
		}
		return -1;
	}
	
}




