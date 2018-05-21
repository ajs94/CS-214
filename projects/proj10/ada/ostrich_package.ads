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
