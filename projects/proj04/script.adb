Script started on Tue 28 Feb 2017 02:33:17 PM EST
ajs94@hopper:~/CS214/projects/proj04$ cat factorial_ada.adb
-- factorial_ada.adb computes a factorial.
--
-- Input: Float n; the factorial being taken.
-- Precondition: increment is positive.
-- Output: the factorial of n
--
-- by: Aaron Santucci ajs94

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure factorial_ada is

   n, i : Integer;
   output : Integer := 1;

begin
   Put_Line("Enter the number to be taken factorial of: ");
   Get(n);

   -- Begin Loop
   for i in 2..n
   loop
      output := output * i;
   end loop;

   Put("Factorial of "); 
   Put(n); 
   Put(" is "); 
   Put(output);

end factorial_ada;

ajs94@hopper:~/CS214/projects/proj04$ ./factorial_ada               gnatmake factorial_ada
gcc-5 -c factorial_ada.adb
factorial_ada.adb:14:07: warning: variable "i" is never read and never assigned
factorial_ada.adb:22:08: warning: for loop implicitly declares loop variable
factorial_ada.adb:22:08: warning: declaration hides "i" declared at line 14
gnatbind-5 -x factorial_ada.ali
gnatlink-5 factorial_ada.ali
ajs94@hopper:~/CS214/projects/proj04$ ./factorial_da  ada
Enter the number to be taken factorial of: 
2
Factorial of           2 is           2
ajs94@hopper:~/CS214/projects/proj04$ ./factorial_ada
Enter the number to be taken factorial of: 
5
Factorial of           5 is         120
ajs94@hopper:~/CS214/projects/proj04$ ./factorial_ada
Enter the number to be taken factorial of: 
7
Factorial of           7 is        5040
ajs94@hopper:~/CS214/projects/proj04$ exit

Script done on Tue 28 Feb 2017 02:34:22 PM EST
