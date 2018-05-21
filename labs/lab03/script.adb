Script started on Wed 15 Feb 2017 09:39:36 AM EST
ajs94@aiken:~/CS214/labs/lab03$ cat year_codes.adb
-- year_codes.adb converts academic year codes to corresponding years.
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Aaron Santucci ajs94
-- Date: February 15, 2017
--
-- Input: year, a string
-- Precondition: year is one of "freshman", "sophomore", "junior", "senior"
-- Output: The year code (1, 2, 3 or 4) corresponding to year.
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure year_codes is

	year : String(1..9) := "         ";
	charsRead : Natural;

	function yearCode (year: String) return integer is
	begin
		if year = "freshman " then
			return 1;
		elsif (year = "sophomore") then
			return 2; 
		elsif (year = "junior   ") then
			return 3;
		elsif (year = "senior   ") then
			return 4;
		else
			return 0;
		end if;
	end yearCode;

begin                                          
   Put("Enter your academic year: ");           -- Prompt for input
   Get_Line(year, charsRead);                   -- Input
   Put( yearCode(year) );                       -- Convert and output
   New_Line;
end year_codes;

ajs94@aiken:~/CS214/labs/lab03$ ga natmake year_coe dersw   s.adb
gcc-5 -c year_codes.adb
gnatbind-5 -x year_codes.ali
gnatlink-5 year_codes.ali
ajs94@aiken:~/CS214/labs/lab03$ ./year_cd odes
Enter your academic year: fe reshman
          1
ajs94@aiken:~/CS214/labs/lab03$ ./year_codes
Enter your academic year: sophomore
          2
ajs94@aiken:~/CS214/labs/lab03$ ./year_codes
Enter your academic year: junior
          3
ajs94@aiken:~/CS214/labs/lab03$ ./year_codes
Enter your academic year: senior
          4
ajs94@aiken:~/CS214/labs/lab03$ ./year_codesasdf    
Enter your academic year: asdf
          0
ajs94@aiken:~/CS214/labs/lab03$ exit

Script done on Wed 15 Feb 2017 09:40:56 AM EST
