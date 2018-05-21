-- temperature.adb declare the name and operations
--      for the temperature type
-- by: Aaron Santucci
-- Date April 11, 2017
-------------------------------------------------

package Temperature is
   
   type Temperature is private;
   
   procedure Init (TheTemp : out Temperature ; Degrees : in Float ;  Scale : in Character);
   
   function GetDegree(TheTemp : in Temperature) return Float;
   function GetScale(TheTemp : in Temperature) return Character;
   
   function GetFahren(TheTemp : in Temperature) return Float;
   function GetCelcius(TheTemp : in Temperature) return Float;
   function GetKelvin(TheTemp : in Temperature) return Float;
   
   procedure raiseTemp(TheName : out Temperature ; Degrees : in Float);
   procedure lowerTemp(TheName : out Temperature ; Degrees : in Float);
   
   function Equals(TheTemp, ATemp : in Temperature) return Boolean;
   function LessThan(TheTemp, ATemp : in Temperature) return Boolean;
   
   
private
   
   type Temperature is
      record
	 MyDegrees : Float := 0.0;
	 MyScale : Character := 'F';
      end record;
   
end Temperature;
