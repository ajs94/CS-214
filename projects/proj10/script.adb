Script started on Wed 03 May 2017 04:10:29 PM EDT
ajs94@aiken:~/CS214/projects/proj10/ada$ cat birds.adb bird_package.ads bird_pac kage.adb fli ying_package.ads flying_package.adb walking_package.ads walking_packa ge.adb penguin_package.ads penguin) _pe ackage.adb ostrich_packaq ge.ads ostrich_packa ge.adb ostrich       kikw  wi_package.ads kiwi_package.adb
-- birds.adb tests our Birds type hierarchy.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College
-- Completed by: Aaron Santucci
-- Date: April 28, 2017
-----------------------------------------------------

with Bird_Package, 
  Duck_Package, 
  Goose_Package, 
  Owl_Package,
  Penguin_Package,
  Ostrich_Package,
  Kiwi_Package,
  Ada.Text_IO;

use Bird_Package,
  Duck_Package, 
  Goose_Package, 
  Owl_Package,
  Penguin_Package,
  Ostrich_Package,
  Kiwi_Package,
  Ada.Text_IO;

procedure Birds is

 Bird2 : Duck_Type;       -- derived class 1
 Bird3 : Goose_Type;      -- derived class 2
 Bird4 : Owl_Type;        -- derived class 3
 Bird5 : Penguin_Type;
 Bird6 : Ostrich_Type;
 Bird7 : Kiwi_Type;

begin
   Put("Welcome to the Bird Park!");
   New_Line;

 Init(Bird2, "Donald");
 Put(Bird2); New_Line;
 Init(Bird3, "Mother");
 Put(Bird3); New_Line;
 Init(Bird4, "Woodsy");
 Put(Bird4); New_Line;
 
  Init(Bird5, "Peter");
 Put(Bird5); New_Line;
 Init(Bird6, "Orville");
 Put(Bird6); New_Line;
 Init(Bird7, "Kiki");
 Put(Bird7); New_Line;

 New_Line;
end Birds;

-- bird_package.ads gives Bird-related declarations
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Aaron Santucci
-- Date: April 28, 2017
---------------------------------------------------

package Bird_Package is
   
   type Bird_Type is tagged private;
   
 ----------------------------------------------------
 -- initialization                                  -
 -- Receive: A_Bird, a Bird_Type;                   -
 --          Name, a String                         -
 -- Return: a Bird_Type whose My_Name = Name.       -
 ----------------------------------------------------
   procedure Init(A_Bird : out Bird_Type; Name : in String);

 ----------------------------------------------------
 -- Name accessor                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: A_Bird.My_Name.                         -
 ----------------------------------------------------
   function Name(A_Bird : in Bird_Type) return String;

 ----------------------------------------------------
 -- A Bird's Call                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: a default bird-call ("Squawk!").        -
 ----------------------------------------------------
   function Call(A_Bird : in Bird_Type) return String;

 ----------------------------------------------------
 -- Determine type of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------
   function Type_Name(A_Bird : in Bird_Type) return String;

 ----------------------------------------------------
 -- Output a Bird                                   -
 -- Receive: A_Bird, a Bird or subclass of Bird.    -
 -- Output: Everything known about A_Bird           -
 ----------------------------------------------------
   procedure Put(A_Bird : in Bird_Type'Class);

private
   
   type Bird_Type is 
      tagged record
	 My_Name : String(1..6);
      end record;
   

end Bird_Package;
-- bird_package.adb gives Bird-related definitions
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Aaron Santucci
-- Date: April 28, 2017

---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Bird_Package is


 ----------------------------------------------------
 -- initialization                                  -
 -- Receive: A_Bird, a Bird_Type;                   -
 --          Name, a String                         -
 -- Return: a Bird_Type in which My_Name = Name.    -
 ----------------------------------------------------
   procedure Init(A_Bird : out Bird_Type; Name : in String) is
   begin
      A_Bird.My_Name := Name;
   end Init;

 ----------------------------------------------------
 -- Name accessor                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: A_Bird.My_Name.                         -
 ----------------------------------------------------
   function Name(A_Bird : in Bird_Type) return String is
   begin
      return A_Bird.My_Name;
   end Name;
   
 ----------------------------------------------------
 -- A Bird's Call                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: a default bird-call ("Squawk!").        -
 ----------------------------------------------------
   function Call(A_Bird : Bird_Type) return String is
   begin
      return "Squawwwwwwk!";
   end Call;
   
 ----------------------------------------------------
 -- Determine type of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------
   function Type_Name(A_Bird : in Bird_Type) return String is
   begin
      return "Bird";
   end Type_Name;

 ----------------------------------------------------
 -- Output a Bird                                   -
 -- Receive: A_Bird, a Bird or subclass of Bird.    -
 -- Output: Everything known about A_Bird           -
 ----------------------------------------------------
   procedure Put(A_Bird : in Bird_Type'Class) is
   begin
      Put( Name(A_Bird) );
      Put( ' ' );
      Put( Type_Name(A_Bird) );
      Put( " says " );
      Put( Call(A_Bird) );
   end Put;
   

end Bird_Package;

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
-- flying_package.adb gives flying bird-related definitions
--
-- Completed by: Aaron Santucci
-- Date: May 3, 2017
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Flying_Package is
   
   -- movement abstract method
   function Movement(A_Duck : in Flying_Type) return String is
   begin
      return "flew";
   end Movement;
   
   
   function Type_Name(A_Duck : in Flying_Type) return String is
   begin
      return "Flying";
   end Type_Name;


end Flying_Package;
-- walking_package.adb gives walking bird-related definitions
--
-- Completed by: Aaron Santucci
-- Date: May 3, 2017
---------------------------------------------------

with Bird_Package; use Bird_Package;

package Walking_Package is
   
   type Walking_Type is new Bird_Type with private;
   
   -- movement abstract method
   function Movement(A_Duck : in Walking_Type) return String;
   
   
   function Type_Name(A_Duck : in Walking_Type) return String;

private
   type Walking_Type is new Bird_Type with
      record
	 null;
      end record;
   

end Walking_Package;
-- walking_package.adb gives walking bird-related definitions
--
-- Completed by: Aaron Santucci
-- Date: May 3, 2017
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Walking_Package is
   
   -- movement abstract method
   function Movement(A_Duck : in Walking_Type) return String is
   begin
      return "walked";
   end Movement;
   
   
   function Type_Name(A_Duck : in Walking_Type) return String is
   begin
      return "Walking";
   end Type_Name;


end Walking_Package;
-- penguin_package.ads gives Penguin-related declarations,
--
--  and derives Penguin from Walking_Bird.
-- Completed by: Aaron Santucci
-- Date: May 3, 2017
---------------------------------------------------

with Walking_Package; use Walking_Package;

package Penguin_Package is
   
   type Penguin_Type is new Walking_Type with private;

 ----------------------------------------------------
 -- A Penguin's Call (Over-rides Bird.Call())          -
 -- Receive: A_Penguin, a Penguin_Type.                   -
 -- Return: "Huh-huh-huh-huh!"                                -
 ----------------------------------------------------
   function Call(A_Penguin : in Penguin_Type) return String;

 -----------------------------------------------------------
 -- Determine type of a Penguin (Over-rides Bird.Type_Name()) -
 -- Receive: A_Penguin, a Penguin_Type.                          -
 -- Return: "Penguin".                                        -
 -----------------------------------------------------------
   function Type_Name(A_Penguin : in Penguin_Type) return String;

private
   type Penguin_Type is new Walking_Type with
      record
	 null;
      end record;
   

end Penguin_Package;
-- penguin_package.adb gives penguin-related definitions
--  by over-riding Bird-related definitions.
--
-- Completed by: Aaron Santucci
-- Date: May 3, 2017
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Penguin_Package is

 ----------------------------------------------------
 -- A Penguin's Call (Over-rides Bird.Call())          -
 -- Receive: A_Penguin, a Penguin_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
   function Call(A_Penguin : in Penguin_Type) return String is
   begin
      return "HuhHuh";
   end Call;

 ------------------------------------------------------------
 -- Determine type of a Penguin (Over-rides Bird.Type_Name()) -
 -- Receive: A_Penguin, a Penguin_Type.                          -
 -- Return: "Penguin".                                        -
 -----------------------------------------------------------
   function Type_Name(A_Penguin : in Penguin_Type) return String is
   begin
      return "Penguin";
   end Type_Name;


end Penguin_Package;
-- ostrich_package.ads gives octrich-related declarations,
--
--  and derives ostrich from Walking_Bird.
-- Completed by: Aaron Santucci
-- Date: May 3, 2017
---------------------------------------------------

with Walking_Package; use Walking_Package;

package Ostrich_Package is
   
   type Ostrich_Type is new Walking_Type with private;

 ----------------------------------------------------
 -- A Ostrich's Call (Over-rides Bird.Call())          -
 -- Receive: A_Ostrich, a Ostrich_Type.                   -
 -- Return: "Snork"                                -
 ----------------------------------------------------
   function Call(A_Ostrich : in Ostrich_Type) return String;

 -----------------------------------------------------------
 -- Determine type of a Ostrich (Over-rides Bird.Type_Name()) -
 -- Receive: A_Ostrich, a Ostrich_Type.                          -
 -- Return: "Ostrich".                                        -
 -----------------------------------------------------------
   function Type_Name(A_Ostrich : in Ostrich_Type) return String;

private
   type Ostrich_Type is new Walking_Type with
      record
	 null;
      end record;
   

end Ostrich_Package;
-- ostrich_package.adb gives ostrich-related definitions
--  by over-riding Bird-related definitions.
--
-- Completed by: Aaron Santucci
-- Date: May 3, 2017
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Ostrich_Package is

 ----------------------------------------------------
 -- A Ostrich's Call (Over-rides Bird.Call())          -
 -- Receive: A_Octrich, a Octrich_Type.                   -
 -- Return: "idk"                                -
 ----------------------------------------------------
   function Call(A_Ostrich : in Ostrich_Type) return String is
   begin
      return "Snork";
   end Call;

 ------------------------------------------------------------
 -- Determine type of a Ostrich (Over-rides Bird.Type_Name()) -
 -- Receive: A_Ostrich, a Ostrich_Type.                          -
 -- Return: "Ostrich".                                        -
 -----------------------------------------------------------
   function Type_Name(A_Ostrich : in Ostrich_Type) return String is
   begin
      return "Ostrich";
   end Type_Name;


end Ostrich_Package;
-- kiwi_package.ads gives kiwi-related declarations,
--
--  and derives kiwi from Walking_Bird.
-- Completed by: Aaron Santucci
-- Date: May 3, 2017
---------------------------------------------------

with Walking_Package; use Walking_Package;

package Kiwi_Package is
   
   type Kiwi_Type is new Walking_Type with private;

 ----------------------------------------------------
 -- A Kiwi's Call (Over-rides Bird.Call())          -
 -- Receive: A_Kiwi, a Kiwi_Type.                   -
 -- Return: "idk"                                -
 ----------------------------------------------------
   function Call(A_Kiwi : in Kiwi_Type) return String;

 -----------------------------------------------------------
 -- Determine type of a Kiwi (Over-rides Bird.Type_Name()) -
 -- Receive: A_Kiwi, a Kiwi_Type.                          -
 -- Return: "Kiwi".                                        -
 -----------------------------------------------------------
   function Type_Name(A_Kiwi : in Kiwi_Type) return String;

private
   type Kiwi_Type is new Walking_Type with
      record
	 null;
      end record;
   

end Kiwi_Package;
-- kiwi_package.adb gives kiwi-related definitions
--  by over-riding Bird-related definitions.
--
-- Completed by: Aaron Santucci
-- Date: May 3, 2017
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Kiwi_Package is

 ----------------------------------------------------
 -- A Kiwi's Call (Over-rides Bird.Call())          -
 -- Receive: A_Kiwi, a Kiwi_Type.                   -
 -- Return: "idk"                                -
 ----------------------------------------------------
   function Call(A_Kiwi : in Kiwi_Type) return String is
   begin
      return "*noise";
   end Call;

 ------------------------------------------------------------
 -- Determine type of a Kiwi (Over-rides Bird.Type_Name()) -
 -- Receive: A_Kiwi, a Kiwi_Type.                          -
 -- Return: "Kiwi".                                        -
 -----------------------------------------------------------
   function Type_Name(A_Kiwi : in Kiwi_Type) return String is
   begin
      return "Kiwi";
   end Type_Name;


end Kiwi_Package;
ajs94@aiken:~/CS214/projects/proj10/ada$ gnatmake bids  rds
gnatmake: "birds" up to date.
ajs94@aiken:~/CS214/projects/proj10/ada$ ./birds
Welcome to the Bird Park!
Donald Duck says Quack!
Mother Goose says Honk!
Woodsy Owl says Whoo!

raised CONSTRAINT_ERROR : bird_package.adb:23 length check failed
ajs94@aiken:~/CS214/projects/proj10/ada$ exit

Script done on Wed 03 May 2017 04:12:38 PM EDT
