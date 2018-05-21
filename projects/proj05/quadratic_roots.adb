-- quadratic_roots.adb computes the quadratic roots of a, b, c
--
-- By: Aaron Santucci ajs94
-- Date: March 7, 2017
--------------------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO, Ada.Strings.Fixed, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Float_Text_IO, Ada.Strings.Fixed, Ada.Numerics.Elementary_Functions;

procedure quadratic_roots is

	a, b, c : Float;
	root1, root2 : Float;
	
	-- pass by reference
	procedure quadraticRoots(a, b, c: in Float; root1, root2: out Float) is
	arg : Float :=  b**2 - 4.0*a*c;
	begin
		root1 := (-b + Sqrt(arg)) / (2.0*a);
		root2 := (-b - Sqrt(arg)) / (2.0*a);
	end quadraticRoots;

begin

	Put("Enter the value for a: ");
	Get(a);
	Put("Enter the value for b: ");
	Get(b);
	Put("Enter the value for c: ");
	Get(c);
	
	quadraticRoots(a, b, c, root1, root2);
	
	Put("The roots of the equation are: ");
	Put(root1);
	Put(" ");
	Put(root2);
	
end quadratic_roots;
