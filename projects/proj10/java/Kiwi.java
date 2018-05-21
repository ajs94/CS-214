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

