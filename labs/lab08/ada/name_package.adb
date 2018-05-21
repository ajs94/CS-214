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

