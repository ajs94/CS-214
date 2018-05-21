Script started on Fri 07 Apr 2017 10:00:16 AM EDT
ajs94@boole:~/CS214/labs/lab08/ada$ ./name_tester[Kcat name t  _tester.adb name_package.ads namePa  _pa ckage.adb
-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Aaron Santucci
-- Date: April 7, 2017
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;
with Name_Package; use Name_Package;

procedure Name_Tester is
   aName : Name_Package.Name;
begin
   
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
   pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
   pragma Assert( getFullName(aName) = "John     Paul     Jones   ", 
                    "getFullName() failed");

   Put(aName); New_line;
   Put("All tests passed!"); New_line;

end name_tester;

-- name_package.ads declares the Name type and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Aaron Santucci
-- Date: April 7, 2017
--------------------------------------------------------------

package Name_Package is
   
   type Name is private;
   
   procedure Init(TheName : out Name ; First, Middle, Last : in String);
   function GetFirst(TheName : in Name) return String;
   function GetMiddle(TheName : in Name) return String;
   function GetLast(TheName : in Name) return String;
   function getFullName(TheName : in Name) return String;
   procedure Put(TheName : in Name);
    
     
private
   
   NAME_SIZE : constant Integer := 8;
   
   type Name is
   record
      MyFirst, MyMiddle, MyLast : String (1 .. NAME_SIZE);
   end record;
   
end Name_Package;
-- name_package.adb defines operations for the Name type.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Aaron Santucci
-- Date: April 7, 2017
---------------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

package body Name_Package is
   
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
  -- getters retrieve Name.my*Name*        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.my*Name*.                  -
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
     
end Name_Package;

ajs94@boole:~/CS214/labs/lab08/ada$ ./name_tester             ./name_tester
John     Paul     Jones   

All tests passed!
ajs94@boole:~/CS214/labs/lab08/ada$ exit

Script done on Fri 07 Apr 2017 10:01:07 AM EDT
