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

