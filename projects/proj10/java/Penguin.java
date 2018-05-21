/* Penguin.java provides an Penguin subclass of Bird.
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

