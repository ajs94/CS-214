Script started on Tue 07 Mar 2017 03:47:01 PM EST
ajs94@hopper:~/CS214/projects/proj05$ gn  cat quadratic_roots.adb
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
ajs94@hopper:~/CS214/projects/proj05$ ga natmake quadratic_roots
gcc-5 -c quadratic_roots.adb
gnatbind-5 -x quadratic_roots.ali
gnatlink-5 quadratic_roots.ali
ajs94@hopper:~/CS214/projects/proj05$ ./quadratic_roots.adb
bash: ./quadratic_roots.adb: Permission denied
ajs94@hopper:~/CS214/projects/proj05$ ./quadratic_roots.adb    
Enter the value for a: 5
Enter the value for b: 10
Enter the value for c: 2
The roots of the equation are: -2.25403E-01 -1.77460E+00
ajs94@hopper:~/CS214/projects/proj05$ ./quadratic_roots
Enter the value for a: 3 4
Enter the value for b: 5
Enter the value for c: 1
The roots of the equation are: -2.50000E-01 -1.00000E+00
ajs94@hopper:~/CS214/projects/proj05$ ./quadratic_roots
Enter the value for a: 2
Enter the value for b: 4
Enter the value for c: 0
The roots of the equation are:  0.00000E+00 -2.00000E+00
ajs94@hopper:~/CS214/projects/proj05$ exit

Script done on Tue 07 Mar 2017 03:48:34 PM EST
