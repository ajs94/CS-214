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
