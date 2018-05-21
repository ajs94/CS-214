-- name_package.ads declares the Name type and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Aaron Santucci
-- Date: April 7, 2017
--------------------------------------------------------------

package Name_Package is
   
   type Name is private;
   
   procedure Init(TheName : out Name ; First, Middle, Last : in String);
   function GetFirst(TheName : in Name) return String;
   function GetMiddle(TheName : in Name) return String;
   function GetLast(TheName : in Name) return String;
   function getFullName(TheName : in Name) return String;
   procedure Put(TheName : in Name);
    
     
private
   
   NAME_SIZE : constant Integer := 8;
   
   type Name is
   record
      MyFirst, MyMiddle, MyLast : String (1 .. NAME_SIZE);
   end record;
   
end Name_Package;
