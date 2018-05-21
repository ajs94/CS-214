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

