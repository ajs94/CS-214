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
}