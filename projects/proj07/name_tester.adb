-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Aaron Santucci
-- Date: March 29, 2017
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is
   
   NAME_SIZE : constant Integer := 8;
   
   type Name is
   record
      MyFirst, MyMiddle, MyLast : String (1 .. NAME_SIZE);
   end record;


   aName : Name ; 


  ----------------------------------------------
  -- Init initializes a Name variable          -
  -- Receive: theName, the Name variable;      -
  --          First, the first name;           -
  --          Middle, the middle name;         -
  --          Last, the last name.             -
  -- Return: theName, its fields set to First, -
  --               Middle, and Last.           -
  ----------------------------------------------
     
     procedure Init(TheName : out Name ; First, Middle, Last : in String) is
     begin
	TheName.MyFirst := First;
	TheName.MyMiddle := Middle;
	TheName.MyLast := Last;
     end Init;


  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myFirst.                  -
  ----------------------------------------------
     
     function GetFirst(TheName : in Name) return String is
     begin
	return TheName.MyFirst;
     end GetFirst;
     
     function GetMiddle(TheName : in Name) return String is
     begin
	return TheName.MyMiddle;
     end GetMiddle;

     function GetLast(TheName : in Name) return String is
     begin
	return TheName.MyLast;
     end GetLast;
     
  ------------------------------------------------
  -- mutator methods for Name items   
  -- Receive: TheName, a Name
  --          A*Name*, a String
  ------------------------------------------------
     
     procedure ChangeFirst(TheName : out Name ; AFirst : in String) is
     begin
	TheName.MyFirst := AFirst;
     end ChangeFirst;
     
     procedure ChangeMiddle(TheName : in out Name ; AMiddle : in String) is
     begin
	TheName.MyMiddle := AMiddle;
     end ChangeMiddle;
     
     procedure ChangeLast(TheName : in out Name ; ALast : in String) is
     begin
	TheName.MyLast := ALast;
     end ChangeLast;
     
     
  --------------------------------------------------
  -- lfmi(Name) displays a Name value in lfmi form -
  -- PRE: theName has been initialized.            -
  -- Receive: theName, a Name.                     -
  -- Output: the Name in form Last,First MiddeInitial.
  ----------------------------------------------
     
     function Lfmi(TheName : in Name) return String is
     begin
	return TheName.MyLast & ", " & TheName.MyFirst & " " & TheName.MyMiddle(TheName.MyMiddle'First) & ".";
     end Lfmi;
	
     
  -----------------------------------------------------------------
  -- readName(Name) changes the first midde and last names from input -
  -- PRE: theName has been initialized.                           -
  -- Receive: theName, a Name.                                    -
  -- Output: the altered Name object                              -
  -----------------------------------------------------------------
     
     procedure ReadName(TheName : in out Name) is
	S : String(1 .. NAME_SIZE) := (others => ' ');
	Last : Integer;
     begin
	Put_Line("Enter the first, middle, and last, names: ");
	Get_Line(S, Last);
	TheName.MyFirst := S;
	Get_Line(S, Last);
	TheName.MyMiddle := S;
	Get_Line(S, Last);
	TheName.MyLast := S;  
     end ReadName;
     
     
  -----------------------------------------------
  -- getFullName(Name) retrieves Name as a String  -
  -- Receive: theName, a Name.                  -
  -- PRE: theName has been initialized.         -
  -- Return: a String representation of theName -
  -----------------------------------------------
     
     function getFullName(TheName : in Name) return String is
     begin
	return TheName.MyFirst & " " & TheName.MyMiddle & " " & TheName.MyLast;
     end getFullName;
     

  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------
     
     procedure Put(TheName : in Name) is
     begin
	Put_Line(GetFullName(TheName));
     end Put;


begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
   pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
   pragma Assert( getFullName(aName) = "John     Paul     Jones   ", 
                    "getFullName() failed");

   Put(aName); New_line;
   
   ChangeFirst(aName, "Aaron   ");
   ChangeMiddle(AName, "Joseph  ");
   ChangeLast(AName, "Santucci");
   
   pragma Assert( getFirst(aName) = "Aaron   ", "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Joseph  ", "getMiddle() failed");
   pragma Assert( getLast(aName) = "Santucci", "getLast() failed");
   pragma Assert( getFullName(aName) = "Aaron   Joseph  Santucci", 
		  "getFullName() failed");
   
   Put(aName);
   Put(Lfmi(AName)); New_Line;
   
   ReadName(AName);
   Put(aName);
   Put(Lfmi(AName)); New_Line;
   
   Put("All tests passed!"); New_line;

end name_tester;

