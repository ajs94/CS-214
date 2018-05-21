Script started on Mon 06 Feb 2017 01:57:40 PM EST
ajs94@aiken:~/proj01$ cat rectangle_areajava RectangleAreacat rectangle_area[Kcat rectangle_area.ada b
-- rectangle_area.adb computes the area of a rectangle.
--
-- Input: The width of the rectangle,
-- Input: The height of the rectangle,		
-- Precondition: The width and height are positive numbers.
-- Output: The area of the rectangle.
-- Completed by: Aaron Santucci ajs94
-- Date: February 6, 2017

with Ada.Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO;

procedure rectangle_area is

   width, height, area : float; 

   -- function rectangleArea computes a rectangle's area, given its width and height
   -- Parameter: w, h, a float
   -- Precondition: w,h >= 0.0
   -- Return: the area of the rectangle whose width is w and heigh is h
   ----------------------------------------------------
   function rectangleArea(w: in float; h: in float) return float is 
   begin
      return w * h;
   end rectangleArea;

begin                           
   Put_Line("To compute the area of a rectangle,");

   Put("enter its height: ");
   Get(height);
   Put("enter its width: ");
   Get(width);

   area := rectangleArea(width, height);

   Put("The rectangle's area is ");
   Put(area);
   New_Line;
end rectangle_area;
ajs94@aiken:~/proj01$ gna   cat rectangle_area.adb[Kjava RectangleArealgeArea[19@c -deprecation RectangleArea.javaajs94@aiken:~/proj01$ [15Pcat RectangleArea.java[4Pa2ps script.e-lispcat RectangleArea.java[4Pa2ps script.e-lisp[11Pemacs &a2ps script.e-lispcat RectangleArea.java[15@javac -deprecation RectangleArea.javaajs94@aiken:~/proj01$ java[19P RectanlgeAreagleAreacat rectangle_area.adb[Kga natmake rectangle_area
gnatmake: "rectangle_area" up to date.
ajs94@aiken:~/proj01$ ./rectangle_area
To compute the area of a rectangle,
enter its height: 3
enter its width: 4
The rectangle's area is  1.20000E+01
ajs94@aiken:~/proj01$ ./rectangle_area
To compute the area of a rectangle,
enter its height: 3.5
enter its width: 7
The rectangle's area is  2.45000E+01
ajs94@aiken:~/proj01$ ./rectangle_area
To compute the area of a rectangle,
enter its height: 15
enter its width: ^[[A^[[B        7
The rectangle's area is  1.05000E+02
ajs94@aiken:~/proj01$ exit

Script done on Mon 06 Feb 2017 01:59:26 PM EST
