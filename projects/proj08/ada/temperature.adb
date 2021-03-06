-- temperature.adb defines the operations for the
--      temperature type
-- by: Aaron Santucci
-- Date April 10, 2017
-------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

package body Temperature is
   
   ------------------------------------------------------
   -- Init initializes a Temperature variable           -
   -- Receive: theTemp, a Temperature variable          -
   --          degrees, the initial number of degrees   -
   --          scale, the temperature unit character    -
   -- Return: the class variables myDegree and myScale  -
   --         set to degree and scale                   -
   ------------------------------------------------------
   procedure Init (TheTemp : out Temperature ; Degrees : in Float ;  Scale : in Character) is
   begin
      TheTemp.MyDegrees := Degrees;
      TheTemp.MyScale := Scale;
   end Init;
   
   
   ------------------------------------------------------
   -- getter methods for the temperature class          -
   -- Receive: TheTemp, a temperature                   -
   -- PRE: TheTemp is initialized                       -
   -- Return: the package variable desired              -
   ------------------------------------------------------
   function GetDegree(TheTemp : in Temperature) return Float is
   begin
      return TheTemp.MyDegrees;
   end GetDegree;
   
   function GetScale(TheTemp : in Temperature) return Character is
   begin
      return TheTemp.MyScale;
   end GetScale;
   
   
   ------------------------------------------------------
   -- converter methods for the temperature class       -
   -- Receive: TheTemp, a temperature                   -
   -- PRE: TheTemp is initialized                       -
   -- Return: myDegrees converted to the wanted scale   -
   ------------------------------------------------------
   function GetFahren(TheTemp : in Temperature) return Float is
   begin
      
      if TheTemp.myScale = 'F' 
	or TheTemp.myScale = 'f' then
	 return TheTemp.myDegrees;
	 
      elsif TheTemp.myScale = 'C' 
	or TheTemp.myScale = 'c' then
	 return ((TheTemp.myDegrees - 32.0) * 5.0 ) / 9.0;
	 
      elsif TheTemp.myScale = 'K' 
	or TheTemp.myScale = 'k' then
	 return ((TheTemp.myDegrees *9.0) / 5.0 ) - 459.67;
	 
      else
	 return 0.0;
      end if;
      
   end GetFahren;
   
   function GetCelcius(TheTemp : in Temperature) return Float is
   begin
      
      if TheTemp.myScale = 'C' 
	or TheTemp.myScale = 'c' then
	 return TheTemp.myDegrees;
	 
      elsif TheTemp.myScale = 'F' 
	or TheTemp.myScale = 'f' then
	 return ((TheTemp.myDegrees - 32.0) * 5.0 ) / 9.0;
	 
      elsif TheTemp.myScale = 'K' 
	or TheTemp.myScale = 'k' then
	 return TheTemp.myDegrees - 273.15;
	 
      else
	 return 0.0;
      end if;
      
   end GetCelcius;
   
   function GetKelvin(TheTemp : in Temperature) return Float is
   begin
      
      if TheTemp.myScale = 'K' 
	or TheTemp.myScale = 'k' then
	 return TheTemp.myDegrees;
	 
      elsif TheTemp.myScale = 'F' 
	or TheTemp.myScale = 'f' then
	 return ((TheTemp.myDegrees + 459.67) * 5.0 ) / 9.0;
	 
      elsif TheTemp.myScale = 'C' 
	or TheTemp.myScale = 'c' then
	 return TheTemp.myDegrees - 273.15;
	 
      else
	 return 0.0;
      end if;
      
   end GetKelvin;
   
   
   ------------------------------------------------------
   -- raiseTemp() and lowerTemp() in/descrease myDegree resp.   -
   -- Receive: TheTemp, a temperature                   -
   --          Temp, a float to be add/subtracted into  -
   ------------------------------------------------------
   procedure raiseTemp(TheName : out Temperature ; Degrees : in Float) is
   begin
      TheName.MyDegrees := TheName.MyDegrees + Degrees;
   end raiseTemp;
   
   procedure lowerTemp(TheName : out Temperature ; Degrees : in Float) is
   begin
      TheName.MyDegrees := TheName.MyDegrees - Degrees;
   end lowerTemp;
   
   
   ------------------------------------------------------
   -- equals() tells if two temperatures are equivalent -
   -- Receive: TheTemp, the left temperature            -
   --          ATemp, the right temperature             -
   -- Return: boolean of the equality operation         -
   ------------------------------------------------------
   function Equals(TheTemp, ATemp : in Temperature) return Boolean is
   begin
      
      if TheTemp.MyScale = ATemp.MyScale then
	return (TheTemp.myDegrees = ATemp.MyDegrees);
	
      elsif TheTemp.myScale = 'F' 
	or TheTemp.myScale = 'f' then
	 return (TheTemp.myDegrees = getFahren(ATemp));
	 
      elsif TheTemp.myScale = 'C' 
	or TheTemp.myScale = 'c' then
	 return (TheTemp.MyDegrees = GetCelcius(ATemp));
	 
      elsif TheTemp.myScale = 'K' 
	or TheTemp.myScale = 'k' then
	 return (TheTemp.myDegrees = GetKelvin(ATemp));
	 
      else
	 return false;
      end if;
   end Equals;
   
   ------------------------------------------------------
   -- lessThan() tells if a temperature is less than another  -
   -- Receive: TheTemp, the left temperature            -
   --          ATemp, the right temperature             -
   -- Return: boolean of the less than operation        -
   ------------------------------------------------------
   function LessThan(TheTemp, ATemp : in Temperature) return Boolean is
   begin
      
      if TheTemp.MyScale = ATemp.MyScale then
	return (TheTemp.myDegrees < ATemp.MyDegrees);
	
      elsif TheTemp.myScale = 'F' 
	or TheTemp.myScale = 'f' then
	 return (TheTemp.myDegrees < getFahren(ATemp));
	 
      elsif TheTemp.myScale = 'C' 
	or TheTemp.myScale = 'c' then
	 return (TheTemp.MyDegrees < GetCelcius(ATemp));
	 
      elsif TheTemp.myScale = 'K' 
	or TheTemp.myScale = 'k' then
	 return (TheTemp.myDegrees < GetKelvin(ATemp));
	 
      else
	 return false;
      end if;
   end LessThan;
   
end Temperature;

