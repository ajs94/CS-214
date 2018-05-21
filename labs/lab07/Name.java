public class Name 
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
	
	public String getFirst()	{
		return myFirst;	}
	
	public String getMiddle()	{
		return myMiddle;	}
	
	public String getLast()	{
		return myLast;	}
	
}