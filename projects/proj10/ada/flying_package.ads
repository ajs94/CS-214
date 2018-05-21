-- flying_package.adb gives flying bird-related definitions
--
-- Completed by: Aaron Santucci
-- Date: May 3, 2017
---------------------------------------------------

with Bird_Package; use Bird_Package;

package Flying_Package is
   
   type Flying_Type is new Bird_Type with private;

 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
   function Movement(A_Duck : in Flying_Type) return String;

 -----------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
   function Type_Name(A_Duck : in Flying_Type) return String;

private
   type Flying_Type is new Bird_Type with
      record
	 null;
      end record;
   

end Flying_Package;
