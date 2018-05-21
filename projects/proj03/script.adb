Script started on Mon 20 Feb 2017 02:56:56 PM EST
ajs94@aiken:~/CS214/projects/proj03$ ./selection_ada               gnatmake selection_ada.adb                          cat selection_adb a.adb
-- selection_ada.abd returns the corresponding letter grade of a given average
-- Completed by: Aaron Santucci ajs94
-- Date: February 20, 2017

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure selection_ada is

	average : String(1..9) := "         ";
	charsRead : Natural;
	
	function letterGrade (average: String) return String is
	avg : Integer := Integer'Value(average); 
	begin
		case avg/10 is
			when 10 | 9 => return "A";
			when 8 => return "B";
			when 7 => return "C";
			when 6 => return "D";
			when others => return "F";	
		end case;
	end letterGrade;

begin
	Put("Enter your average grade: ");      -- Prompt for input
	Get_Line(average, charsRead);           -- Input
	Put( letterGrade(average) );            -- Convert and output
	New_Line;
end selection_ada;
ajs94@aiken:~/CS214/projects/proj03$ cat selection_ada.adb[1P[1P[1P[1@g[1@n[1@a[1@t[1@m[1@a[1@k[1@e
gnatmake: "selection_ada" up to date.
ajs94@aiken:~/CS214/projects/proj03$ gnatmake selection_ada.adb[5Pcat selection_ada.adb[6P./selection_ada
Enter your average grade: 100
A
ajs94@aiken:~/CS214/projects/proj03$ ./selection_ada
Enter your average grade: 96
A
ajs94@aiken:~/CS214/projects/proj03$ ./selection_ada
Enter your average grade: 85
B
ajs94@aiken:~/CS214/projects/proj03$ ./selection_ada
Enter your average grade: 84
B
ajs94@aiken:~/CS214/projects/proj03$ ./selection_ada7 
Enter your average grade: 74
C
ajs94@aiken:~/CS214/projects/proj03$ ./selection_ada
Enter your average grade: 63
D
ajs94@aiken:~/CS214/projects/proj03$ ./selection_ada
Enter your average grade: 52
F
ajs94@aiken:~/CS214/projects/proj03$ exit

Script done on Mon 20 Feb 2017 02:58:04 PM EST
