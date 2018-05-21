Script started on Wed 08 Mar 2017 09:27:15 AM EST
ajs94@hollerith:~/CS214/labs/lab06$ cat average.adb
-- average.adb "test-drives" function Average.
-- Precondition: theArray is an array of numbers.
-- Output: the average of the numbers.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Aaron Santucci ajs94
-- Date: March 7, 2017
-----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;             -- Put(String)
with Ada.Float_Text_IO; use Ada.Float_Text_IO; -- Put(Float)

procedure average is

	type Vector is array ( Positive range <>) of Float;

	array0 : Vector := (0.0, 0.0);
	array1 : Vector := (9.0, 8.0, 7.0, 6.0);

----------------------------------------------
-- sum() sums the values in an array         -
-- Receive: anArray, an array of numbers     -
-- Return: the sum of the values in anArray. -
----------------------------------------------
function sum ( anArray : in Vector) return Float is
	total : Float := 0.0;
	begin
		for i in anArray'Range
		loop
			total := total + anArray(i);
		end loop;
		return total;
	end sum;

--------------------------------------------------
-- average() averages the values in an array     -
-- Receive: anArray, an array of numbers	     -
-- Return: the average of the values in anArray. -
--------------------------------------------------
function average ( anArray : in Vector) return Float is
	begin
		return ( sum(anArray) / Float(anArray'Length));
	end average;


begin
	Put(" average 0 is ");
	Put( average(array0) );
	New_line;
	Put(" average 1 is ");
	Put( average(array1) );
	New_line;
end average;

ajs94@hollerith:~/CS214/labs/lab06$ gnam tmake average.adb
gnatmake: "average" up to date.
ajs94@hollerith:~/CS214/labs/lab06$ ./average
 average 0 is  0.00000E+00
 average 1 is  7.50000E+00
ajs94@hollerith:~/CS214/labs/lab06$ exit

Script done on Wed 08 Mar 2017 09:27:53 AM EST
