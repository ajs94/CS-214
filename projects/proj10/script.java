Script started on Wed 03 May 2017 02:03:08 PM EDT
ajs94@aiken:~/CS214/projects/proj10/java$ cat Birds.java Bird.java Walking. Bird.j ava FlyingBird.java Penguin.java Ostrich.java Kiwi.java
/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Joel Adams, for CS 214 Lab 10 at Calvin College.
 * Completed by:
 * Date:
 *********************************************************/

public class Birds {
  
  public static void main(String[] args) {
      System.out.println("\nWelcome to the Bird Park!\n");

      Duck bird0 = new Duck("Donald");
      bird0.print();
      Goose bird1 = new Goose("Mother Goose");
      bird1.print();
      Owl bird2 = new Owl("Woodsey");  
      bird2.print();
	  
	  Penguin bird3 = new Penguin("Peter");
	  bird3.print();
	  Ostrich bird4 = new Ostrich("Orville");
	  bird4.print();
	  Kiwi bird5 = new Kiwi("Kiki");
	  bird5.print();
	  
      System.out.println();
    }
}

/* Bird.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Aaron Santucci
 * Date: April 28, 2017
 ******************************************************/

import java.io.*;

public abstract class Bird
{

 /* default constructor
  * PostCond: myName == "".
  */
	public Bird()
	{
		myName = "";
	}


 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
	public Bird(String name)
	{
		myName = name;
	}


 /* Name accessor
  * Return: myName.
  */
	public String getName()
	{
		return myName;
	}


 /* A Bird's Call
  * Return: a default bird-call ("Squawk!").
  */
	public String call()
	{
		return "Squaaaaaaaaaawk!";
	}


 /* Output a Bird 
  * Output: Everything known about myself
  *          to the standard output stream.
  */
	public void print()
	{
		System.out.println( getName() + ' ' + getClass().getName() + " just " + movement() + " by and said " + call() );
	}

	public abstract String movement();

  private String myName;
}

/* WalkBird.java provides a WalkingBird subclass for Bird
 *
 * Completed by: Aaron Santucci
 * Date: May 3, 2017
 */

public class WalkingBird extends Bird {

	/* explicit constructor
	 * Receive: name, a String 
	 * PostCond: myName == name.
	 */
	public WalkingBird() {
		super();
	}
	
	public WalkingBird(String itsName) {
		super(itsName);
	}
	
	/* The Bird's movement type
	 * retrun: String "walked"
	 */
	public String movement()
	{
		return "walked";
	}
}/* WalkBird.java provides a FlyingBird subclass for Bird
 *
 * Completed by: Aaron Santucci
 * Date: May 3, 2017
 */

public class FlyingBird extends Bird {

	/* explicit constructor
	 * Receive: name, a String 
	 * PostCond: myName == name.
	 */
	public FlyingBird() {
		super();
	}
	
	public FlyingBird(String itsName) {
		super(itsName);
	}
	
	/* The Bird's movement type
	 * retrun: String "walked"
	 */
	public String movement()
	{
		return "flew";
	}
}/* Penguin.java provides an Penguin subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Aaron Santucci
 * Date: May 3, 2017
 ******************************************************/

public class Penguin extends WalkingBird {

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
	public Penguin() {
		super();
	}
	
	public Penguin(String name)
	{
		super(name);
	}



 /* An Penguin's Call
  * Return: an owl-call ("Whoo-hoo!").
  */
	public String call()
	{
		return "Huh=huh-huh-huuuuh!";
	}

} 

/* Ostrich.java provides an Ostrich subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Aaron Santucci
 * Date: May 3, 2017
 ******************************************************/

public class Ostrich extends WalkingBird {

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
	public Ostrich() {
		super();
	}
	
	public Ostrich(String name)
	{
		super(name);
	}



 /* An Ostrich's Call
  * Return: an owl-call ("Whoo-hoo!").
  */
	public String call()
	{
		return "Snork!";
	}

} 

/* Kiwi.java provides an Kiwi subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Aaron Santucci
 * Date: May 3, 2017
 ******************************************************/

public class Kiwi extends WalkingBird {

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
	public Kiwi() {
		super();
	}
	
	public Kiwi(String name)
	{
		super(name);
	}



 /* An Kiwi's Call
  * Return: an owl-call ("Whoo-hoo!").
  */
	public String call()
	{
		return "Snork!";
	}

} 

ajs94@aiken:~/CS214/projects/proj10/java$ make
javac -deprecation Birds.java
ajs94@aiken:~/CS214/projects/proj10/java$ java Birds

Welcome to the Bird Park!

Donald Duck just flew by and said Quack!
Mother Goose Goose just flew by and said Honk!
Woodsey Owl just flew by and said Hoot!
Peter Penguin just walked by and said Huh=huh-huh-huuuuh!
Orville Ostrich just walked by and said Snork!
Kiki Kiwi just walked by and said Snork!

ajs94@aiken:~/CS214/projects/proj10/java$ exit

Script done on Wed 03 May 2017 02:03:59 PM EDT
