Script started on Fri 28 Apr 2017 03:22:24 PM EDT
ajs94@vonneumann:~/CS214/labs/lab10/ada$ ./birds[3Pmakecat bids.adb bird_package.ads bird_packaage.adb duck_package.ads duck_package.adb goose_package.ads goose_package.adb owll_package.ads owl_package.adb
cat: bids.adb: No such file or directory
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

-- duck_package.ads gives Duck-related declarations,
--
--  and derives Duck from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with Bird_Package; use Bird_Package;

package Duck_Package is
   
   type Duck_Type is new Bird_Type with private;

 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
   function Call(A_Duck : in Duck_Type) return String;

 -----------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
   function Type_Name(A_Duck : in Duck_Type) return String;

private
   type Duck_Type is new Bird_Type with
      record
	 null;
      end record;
   

end Duck_Package;
-- duck_package.adb gives Duck-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Duck_Package is

 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
   function Call(A_Duck : in Duck_Type) return String is
   begin
      return "Quack!";
   end Call;

 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
   function Type_Name(A_Duck : in Duck_Type) return String is
   begin
      return "Duck";
   end Type_Name;


end Duck_Package;
-- goose_package.ads gives Goose-related declarations,
--
--  and derives Goose from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Aaron Santucci
-- Date: April 28, 2017
---------------------------------------------------

with Bird_Package; use Bird_Package;

package Goose_Package is

 type Goose_Type is new Bird_Type with private;


 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose.                      -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
 function Call(A_Goose : in Goose_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose.                       -
 -- Return: "Goose".                                 -
 -----------------------------------------------------
 function Type_Name(A_Goose : in Goose_Type) return String;

private
   type Goose_Type is new Bird_Type with
      record
	 null;
      end record;
   

end Goose_Package;
-- goose_package.adb gives Goose-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Aaron Santucci
-- Date: April 28, 2017
---------------------------------------------------

package body Goose_Package is

 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
   function Call(A_Goose : in Goose_Type) return String is
   begin
      return "Honk!";
   end Call;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose_Type.                  -
 -- Return: "Goose".                                 -
 -----------------------------------------------------
   
   function Type_Name(A_Goose : in Goose_Type) return String is    
   begin
      return "Goose";   
   end Type_Name;

end Goose_Package;
-- owl_package.ads gives Owl-related declarations,
--  and derives Owl from Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Aaron Santucci
-- Date: April 28, 2017
---------------------------------------------------

with Bird_Package; use Bird_Package;

package Owl_Package is
   
   type Owl_Type is new Bird_Type with private;

 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
   function Call(A_Owl : in Owl_Type) return String;


 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------
   function Type_Name(A_Owl : in Owl_Type) return String;
   
private
   type Owl_Type is new Bird_Type with
      record
	 null;
      end record;
   

end Owl_Package;
-- owl_package.adb gives Owl-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Aaron Santucci
-- Date: April 28, 2017
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Owl_Package is


 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
   function Call(A_Owl : in Owl_Type) return String is
   begin
      return "Whoo!";
   end Call;
   
 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------
   function Type_Name(A_Owl : in Owl_Type) return String is
   begin
      return "Owl";
   end Type_Name;

end Owl_Package;
ajs94@vonneumann:~/CS214/labs/lab10/ada$ cat bids.adb bird_package.ads bird_packaage.adb duck_package.ads duck_package.adb goose_package.ads goose_package.adb owll_package.ads owl_package.adb[A[A/lab10/ada$ ./birds[K
[K
[K[A[Aajs94@vonneumann:~/CS214/labs/lab10/ada$ ./birds[3Pmake
make: 'birds' is up to date.
ajs94@vonneumann:~/CS214/labs/lab10/ada$ makecat bids.adb bird_package.ads bird_packaage.adb duck_package.ads duck_package.adb goose_package.ads goose_package.adb owll_package.ads owl_package.adb[A[A/lab10/ada$ ./birds[K
[K
[K[A[Aajs94@vonneumann:~/CS214/labs/lab10/ada$ ./birds
Welcome to the Bird Park!
Tweety Bird says Squawwwwwwk!
Donald Duck says Quack!
Mother Goose says Honk!
Woodsy Owl says Whoo!

ajs94@vonneumann:~/CS214/labs/lab10/ada$ exit

Script done on Fri 28 Apr 2017 03:22:36 PM EDT
