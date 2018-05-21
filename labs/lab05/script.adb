Script started on Wed 01 Mar 2017 09:37:02 AM EST
ajs94@chomsky:~/CS214/labs/lab05$ gan  natmake        cat splir t.adb
-- split.adb splits an input string about a specified position.
--
-- Input: Astring, a string,
--        Pos, an integer.
-- Precondition: pos is in Astring'Range.
-- Output: The substrings Astring(Astring'First..Pos-1) and
--                        Astring(Pos..Astring'Last).
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Aaron Santucci ajs94
-- Date: March 1, 2017
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;

procedure split is

   EMPTY_STRING : String := "                                        ";

   Astring, Part1, Part2 : String  := EMPTY_STRING;
   Pos, Chars_read       : Natural;

   ------------------------------------------------
   --  split() splits a string in two.           
   -- Receive: The_String, the string to be split,
   --          Position, the split index.        
   -- PRE: 0 < Position <= The_String.length(). 
   --     (Ada arrays are 1-relative by default)
   -- Passback: First_Part - the first substring,
   --           Last_Part - the second substring.
   ------------------------------------------------
   procedure split (The_String: in String; pos: in Integer; Part1: in out String; Part2: in out String) is
   
   begin
      move(The_String(1 .. pos-1), Part1);
      move(The_String(pos .. The_String'Length), Part2);
   end split;


begin                                           -- Prompt for input
   Put("To split a string, enter the string: ");
   Get_Line(Astring, Chars_Read);
   Put("Enter the split position: ");
   Get(Pos);

   split(Astring, Pos, Part1, Part2);

   Put("The first part is ");
   Put_Line(Part1);
   Put(" and the second part is ");
   Put_Line(Part2);

end split;

ajs94@chomsky:~/CS214/labs/lab05$ gant   natmake split.adb
gcc-5 -c split.adb
split.adb:36:23: warning: index for "The_String" may assume lower bound of 1
split.adb:36:23: warning: suggested replacement: "The_String'First"
split.adb:37:30: warning: index for "The_String" may assume lower bound of 1
split.adb:37:30: warning: suggest replacement of "The_String'Length" by "The_String'Last"
gnatbind-5 -x split.ali
gnatlink-5 split.ali
ajs94@chomsky:~/CS214/labs/lab05$ ./sl plit
To split a string, enter the string: hello
Enter the split position: 1
The first part is                                         
 and the second part is hello                                   
ajs94@chomsky:~/CS214/labs/lab05$ ./split
To split a string, enter the string: 4 hello
Enter the split position: 4
The first part is hel                                     
 and the second part is lo                                      
ajs94@chomsky:~/CS214/labs/lab05$ ./split
To split a string, enter the string: hello
Enter the split position: 6
The first part is hello                                   
 and the second part is                                         
ajs94@chomsky:~/CS214/labs/lab05$ exit

Script done on Wed 01 Mar 2017 09:38:54 AM EST
