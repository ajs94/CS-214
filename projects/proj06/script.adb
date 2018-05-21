Script started on Tue 14 Mar 2017 04:15:01 PM EDT
ajs94@chomsky:~/CS214/projects/proj06$ cat array_processing.adb
-- average.adb Receive array size and values as input and print the values given
--
-- Completed by: Aaron Santucci ajs94
-- Date: March 14, 2017
-----------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO;

procedure array_processing is

	type Vector is array ( Positive range <>) of Float;

	size : Integer := 0;

------------------------------------------------------------------
-- printArray() prints out a given array						--
-- receive: double anArray; an array of double to be printed --
------------------------------------------------------------------
procedure printArray ( anArray : in Vector) is
	begin
		for i in anArray'Range loop
			Put(anArray(i));
			Put(" ");
		end loop;
	end printArray;

--------------------------------------------------------------------------
-- readArray() receives the values for a given array of a given size;	--
-- receive: 	size: an integer										--
-- return: theArray now filled with input from user						--
--------------------------------------------------------------------------
function readArray (size : in Integer) return Vector is
	anArray : Vector(1 .. size);
	temp : Float := 0.0;
	begin
		put_line("Enter the value(s): ");
		for i in anArray'Range loop
			get(temp);
			anArray(i) := temp;
		end loop;
		return anArray;
	end readArray;


begin
	put_line("Enter the size of the array: ");
	get(size);
	printArray( readArray(size) );

end array_processing;

ajs94@chomsky:~/CS214/projects/proj06$ gant   natmake array_processing.adb    
gcc-5 -c array_processing.adb
gnatbind-5 -x array_processing.ali
gnatlink-5 array_processing.ali
ajs94@chomsky:~/CS214/projects/proj06$ exit

Script done on Tue 14 Mar 2017 04:15:32 PM EDT
