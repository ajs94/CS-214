/* WalkBird.java provides a FlyingBird subclass for Bird
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
}