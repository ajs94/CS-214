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
