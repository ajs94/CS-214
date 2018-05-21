Script started on Fri 24 Feb 2017 09:22:27 AM EST
ajs94@boole:~/CS214/labs/lab04$ ./log_table.adbgnatmake log_table[1Pcat log_table.adb
-- log_table.adb computes a table of logarithms.
--
-- Input: start, stop, increment, three reals.
-- Precondition: increment is positive.
-- Output: A table of logarithms beginning with log(start),
--         ending with log(stop), with intervals of increment.
--
-- Begun by: Prof. Adams, for CS 214 at Calvin College.
-- Completed by: Aaron Santucci ajs94
--------------------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

with Ada.Numerics.Elementary_Functions;
use  Ada.Numerics.Elementary_Functions;

procedure log_table is

   Start, Stop, Increment: Float;

begin                                           -- Prompt for input
   Put_Line("To print a table of logarithms,");
   Put(" enter the start, stop, and increment values: ");
   Get(Start); Get(Stop); Get(Increment);

   -- Begin Loop
   while Start <= Stop
   loop
      Put_line("");
      Put(log(Start, 10.0));
      Start := Start + Increment;
   end loop;

end log_table;

ajs94@boole:~/CS214/labs/lab04$ cat log_table.adb[6P./log_table.adbgnatmake log_table
gnatmake: "log_table" up to date.
ajs94@boole:~/CS214/labs/lab04$ gnatmake log_table[1Pcat log_table.adb[6P./log_table
To print a table of logarithms,
 enter the start, stop, and increment values: 1
10
.5

 0.00000E+00
 1.76091E-01
 3.01030E-01
 3.97940E-01
 4.77121E-01
 5.44068E-01
 6.02060E-01
 6.53212E-01
 6.98970E-01
 7.40363E-01
 7.78151E-01
 8.12913E-01
 8.45098E-01
 8.75061E-01
 9.03090E-01
 9.29419E-01
 9.54243E-01
 9.77724E-01
 1.00000E+00
ajs94@boole:~/CS214/labs/lab04$ exit

Script done on Fri 24 Feb 2017 09:23:11 AM EST
