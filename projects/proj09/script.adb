Script started on Wed 19 Apr 2017 02:26:17 PM EDT
ajs94@dijkstra:~/CS214/projects/proj09/ada$ cat max.adb listpacka     _package.ads list_pa ckage.ab db
-- max.adb finds the max of a list of integers. 
-- 
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Aaron Santucci
-- Date: April 13, 2017
-------------------------------------------------- 
 
with Ada.Text_IO, Ada.Integer_Text_IO, List_Package; 
use Ada.Text_IO, Ada.Integer_Text_IO, List_Package; 
 
procedure Max is 
                              -- define 3 lists 
  List1, List2, List3, List4: List; 
 
begin 
  Init(List1);                -- initialize them 
  Init(List2); 
  Init(List3); 
  Init(List4);
 
  Append(99, List1);          -- 99, 88, 77, 66, 55 
  Append(88, List1);          -- max is first 
  Append(77, List1); 
  Append(66, List1); 
  Append(55, List1); 
 
  Append(55, List2);          -- 55, 66, 77, 88, 99 
  Append(66, List2);          -- max is last 
  Append(77, List2); 
  Append(88, List2); 
  Append(99, List2); 
 
  Append(55, List3);          -- 55, 77, 99, 88, 66 
  Append(77, List3);          -- max is in the middle 
  Append(99, List3); 
  Append(88, List3); 
  Append(66, List3); 
  
  Append(11, List4); 
  Append(22, List4);
  Append(33, List4); 
  Append(44, List4); 
  Append(55, List4); 
 
  Put(List1); New_Line;       -- output the 3 lists 
  Put(List2); New_Line; 
  Put(list3); New_Line; 
                              -- display their maxima 
  Put("The maximum value in list 1 is ");  
  Put( Max(List1) ); 
  New_Line; 
  Put("The maximum value in list 2 is "); 
  Put( Max(List2) );
  New_Line; 
  Put("The maximum value in list 3 is ");
  Put( Max(List3) );
  New_Line; 
  
  -- Project 9 testing
  Put("The position of 99 in list 1 is ");
  Put(Search(List1, 99));
  Put("The position of 99 in list 2 is ");
  Put(Search(List2, 99));
  Put("The position of 99 in list 3 is ");
  Put(Search(List3, 99));
  Put("The position of 99 in list 4 is ");
  Put(Search(List4, 99));
      
 
end Max; 

-- list_package.ads declares an Ada linked list and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Aaron Santucci
-- Date: April 13, 2017
------------------------------------------------------------------

package List_Package is

  -- the list-type itself (public)
  type List is private;

  -----------------------------------------------------
  -- Initialize a list                                -
  -- Receive: aList, a List.                          -
  -- Pre: aList is uninitialized.                     -
  -- Post: aList%itsFirst == aList%itsLast == NULL && -
  --        aList%itsLength == 0.                     -
  -----------------------------------------------------
  procedure Init(A_List: out List);


  ------------------------------------------------
  -- Is a list empty?                            -
  -- Receive: aList, a List.                     -
  -- Return: true, iff aList contains no values. -
  ------------------------------------------------
  function Empty(A_List: in List) return Boolean;

  -------------------------------------
  -- How many values are in a list?   -
  -- Receive: aList, a List.          -
  -- Return: aList%itsLength.         -
  -------------------------------------
  function Length(A_List : in List) return Integer;


  ----------------------------------------
  -- Append a value to a list.           -
  -- Receive: aValue, an integer,        -
  -- Passback: aList, containing aValue. -
  ----------------------------------------
  procedure Append(A_Value : in Integer; A_List: in out List);


  -------------------------------------
  -- Display the values in a list.    -
  -- Receive: aList, a List.          -
  -- Output: the values in aList.     -
  -------------------------------------

  procedure Put(A_List : in List);

  ---------------------------------------
  -- Find the maximum value in a list.  -
  -- Receive: aList, a List.            -
  -- Return: the maximum value in aList.-
  ---------------------------------------
  function Max(A_List : in List) return Integer;
  
  ---------------------------------------
  -- return the position of a value in a list
  -- receive: aList, a List
  --          aValue, the integer searched for
  -- return: integer position of aValue; -1 if not in aList 
  ---------------------------------------
  function Search(AList : in List ; AValue : in Integer) return Integer;

private
   
    type List_Node;
    type Node_Ptr is access List_Node;
    type List_Node is
       record
	  Its_Value : Integer;
	  Its_Next : Node_Ptr;
       end record;
    
    type List is
       record
	  Its_First : Node_Ptr;
	  Its_Last : Node_Ptr;
	  Its_Length : Integer;
       end record;

end List_Package;

-- list_package.adb defines Ada linked list operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Aaron Santucci
-- Date: April 13, 2017
-------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

package body List_Package is

  -----------------------------------------------------
  -- Initialize a list                                -
  -- Receive: aList, a List.                          -
  -- Pre: aList is uninitialized.                     -
  -- Post: aList%itsFirst == aList%itsLast == NULL && -
  --        aList%itsLength == 0.                     -
  -----------------------------------------------------
  procedure Init(A_List : out List) is
  begin
    A_List.Its_First := null;
    A_List.Its_Last := null;
    A_List.Its_Length := 0;
  end Init;

  ------------------------------------------------
  -- Is a list empty?                            -
  -- Receive: aList, a List.                     -
  -- Return: true, iff aList contains no values. -
  ------------------------------------------------
  function Empty(A_List : in List) return Boolean is
  begin
    return A_List.Its_Length = 0;
  end Empty;

  -------------------------------------
  -- How many values are in a list?   -
  -- Receive: aList, a List.          -
  -- Return: aList%itsLength.         -
  -------------------------------------
  function Length(A_List : in List) return Integer is
  begin
    return A_List.Its_Length;
  end Length;

  ----------------------------------------
  -- Append a value to a list.           -
  -- Receive: aValue, an integer,        -
  -- Passback: aList, containing aValue. -
  ----------------------------------------
  procedure Append(A_Value : in Integer; A_List : in out List) is
    Temp_Ptr : constant Node_Ptr := new List_Node;
  begin
    Temp_Ptr.Its_Value := A_Value;
    Temp_Ptr.Its_Next := null;

    if A_List.Its_Length = 0 then
       A_List.Its_First := Temp_Ptr;
    else
       A_List.Its_Last.Its_Next := Temp_Ptr;
    end if;

    A_List.Its_Last := Temp_Ptr;

    A_List.Its_Length := A_List.Its_Length + 1;
  end Append;

  -------------------------------------
  -- Display the values in a list.    -
  -- Receive: aList, a List.          -
  -- Output: the values in aList.     -
  -------------------------------------
  procedure Put(A_List : in List) is
     Temp_Ptr : Node_Ptr := A_List.Its_First;
  begin
     while Temp_Ptr /= null loop
	Put(' '); Put(Temp_Ptr.Its_Value);
	Temp_Ptr := Temp_Ptr.Its_Next;
     end loop;
  end Put;

  ---------------------------------------
  -- Find the maximum value in a list.  -
  -- Receive: aList, a List.            -
  -- Return: the maximum value in aList.-
  ---------------------------------------
  function Max(A_List : in List) return Integer is
   Temp_Ptr : Node_Ptr := A_List.Its_First;
   TheMax : Integer := -999999;
  begin
     while Temp_Ptr /= null loop
        if Temp_Ptr.Its_Value > TheMax
	then
	   TheMax := Temp_Ptr.Its_Value;
	end if;
	Temp_Ptr := Temp_Ptr.Its_Next;
     end loop;
     return TheMax;
  end Max;
  
  ---------------------------------------
  -- return the position of a value in a list
  -- receive: aList, a List
  --          aValue, the integer searched for
  -- return: integer position of aValue; -1 if not in aList 
  ---------------------------------------
  function Search(AList : in List ; AValue : in Integer) return Integer is
     Temp_Ptr : Node_Ptr := AList.Its_First;
     Count : Integer := 1;
  begin
     while Temp_Ptr /= null 
     loop
	if Temp_Ptr.Its_Value = AValue
	then
	   return Count;
	end if;
        Count := Count + 1;
	Temp_Ptr := Temp_Ptr.Its_Next;
     end loop;
     return -1;
  end Search;
  
       
end List_Package;


ajs94@dijkstra:~/CS214/projects/proj09/ada$ gnatmake pist    list_package
ajs94@dijkstra:~/CS214/projects/proj09/ada$ gnatmake list_package            maxx 
gnatmake: "max" up to date.
ajs94@dijkstra:~/CS214/projects/proj09/ada$ ma  ./max. 
          99          88          77          66          55
          55          66          77          88          99
          55          77          99          88          66
The maximum value in list 1 is          99
The maximum value in list 2 is          99
The maximum value in list 3 is          99
The position of 99 in list 1 is           1The position of 99 in list 2 is           5The position of 99 in list 3 is           3The position of 99 in list 4 is          -1
ajs94@dijkstra:~/CS214/projects/proj09/ada$ exit

Script done on Wed 19 Apr 2017 02:27:03 PM EDT
