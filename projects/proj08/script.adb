Script started on Tue 11 Apr 2017 02:12:23 PM EDT
ajs94@wirth:~/CS214/projects/proj08/ada$ cat [Kajs94@wirth:~/CS214/projects/proj08/ada$ cat temp_tester.adb temperature.ads temperature.adb
-- temp_tester.adb "test-drives" the Temperature package.
-- By: Aaron Santucci
-- Date: April 11, 2017
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Temperature; use Temperature;

procedure Temp_Tester is
   BaseTemp : Temperature.Temperature;
   LimitTemp : Temperature.Temperature;
   StepValue : Float;
begin
   
   -- Test 1
   Init(BaseTemp, 0.0, 'F');
   Init(LimitTemp, 100.0, 'C');
   StepValue := 2.5;
   
   loop
      if LessThan(BaseTemp, LimitTemp) then
	 Put("Fahrenheit "); Put(GetFahren(BaseTemp));        Put("     ");
	 Put("Celcius ");    Put(GetCelcius(BaseTemp)); Put("     ");
	 Put("Kelvin "); Put(GetKelvin(BaseTemp));
	 New_Line;
	 RaiseTemp(BaseTemp, StepValue);
      else
	 exit;
      end if;
   end loop;
   
   New_Line;
   --Test 2
   Init(BaseTemp, 0.0, 'K');
   Init(LimitTemp, 212.0, 'F');
   StepValue := 20.0;
   
   loop
      if LessThan(BaseTemp, LimitTemp) then
	 Put("Fahrenheit "); Put(GetFahren(BaseTemp));        Put("     ");
	 Put("Celcius ");    Put(GetCelcius(BaseTemp)); Put("     ");
	 Put("Kelvin "); Put(GetKelvin(BaseTemp));
	 New_Line;
	 RaiseTemp(BaseTemp, StepValue);
      else
	 exit;
      end if;
   end loop;
   
end Temp_Tester;

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

ajs94@wirth:~/CS214/projects/proj08/ada$ gnatmake temp_tester.adb
gnatmake: "temp_tester" up to date.
ajs94@wirth:~/CS214/projects/proj08/ada$ gnatmake temp_tester.adb[1P[1P[1P[1P[1P[1P[1P[1@e[1@r[1@a[1@t[1@u[1@r[1@e
ajs94@wirth:~/CS214/projects/proj08/ada$ gnatmake temperature.adb  ds
ajs94@wirth:~/CS214/projects/proj08/ada$ ./temp_tester
Fahrenheit  0.00000E+00     Celcius -1.77778E+01     Kelvin  2.55372E+02
Fahrenheit  2.50000E+00     Celcius -1.63889E+01     Kelvin  2.56761E+02
Fahrenheit  5.00000E+00     Celcius -1.50000E+01     Kelvin  2.58150E+02
Fahrenheit  7.50000E+00     Celcius -1.36111E+01     Kelvin  2.59539E+02
Fahrenheit  1.00000E+01     Celcius -1.22222E+01     Kelvin  2.60928E+02
Fahrenheit  1.25000E+01     Celcius -1.08333E+01     Kelvin  2.62317E+02
Fahrenheit  1.50000E+01     Celcius -9.44444E+00     Kelvin  2.63706E+02
Fahrenheit  1.75000E+01     Celcius -8.05556E+00     Kelvin  2.65094E+02
Fahrenheit  2.00000E+01     Celcius -6.66667E+00     Kelvin  2.66483E+02
Fahrenheit  2.25000E+01     Celcius -5.27778E+00     Kelvin  2.67872E+02
Fahrenheit  2.50000E+01     Celcius -3.88889E+00     Kelvin  2.69261E+02
Fahrenheit  2.75000E+01     Celcius -2.50000E+00     Kelvin  2.70650E+02
Fahrenheit  3.00000E+01     Celcius -1.11111E+00     Kelvin  2.72039E+02
Fahrenheit  3.25000E+01     Celcius  2.77778E-01     Kelvin  2.73428E+02
Fahrenheit  3.50000E+01     Celcius  1.66667E+00     Kelvin  2.74817E+02
Fahrenheit  3.75000E+01     Celcius  3.05556E+00     Kelvin  2.76206E+02

Fahrenheit -4.59670E+02     Celcius -2.73150E+02     Kelvin  0.00000E+00
Fahrenheit -4.23670E+02     Celcius -2.53150E+02     Kelvin  2.00000E+01
Fahrenheit -3.87670E+02     Celcius -2.33150E+02     Kelvin  4.00000E+01
Fahrenheit -3.51670E+02     Celcius -2.13150E+02     Kelvin  6.00000E+01
Fahrenheit -3.15670E+02     Celcius -1.93150E+02     Kelvin  8.00000E+01
Fahrenheit -2.79670E+02     Celcius -1.73150E+02     Kelvin  1.00000E+02
Fahrenheit -2.43670E+02     Celcius -1.53150E+02     Kelvin  1.20000E+02
Fahrenheit -2.07670E+02     Celcius -1.33150E+02     Kelvin  1.40000E+02
Fahrenheit -1.71670E+02     Celcius -1.13150E+02     Kelvin  1.60000E+02
Fahrenheit -1.35670E+02     Celcius -9.31500E+01     Kelvin  1.80000E+02
Fahrenheit -9.96700E+01     Celcius -7.31500E+01     Kelvin  2.00000E+02
Fahrenheit -6.36700E+01     Celcius -5.31500E+01     Kelvin  2.20000E+02
Fahrenheit -2.76700E+01     Celcius -3.31500E+01     Kelvin  2.40000E+02
Fahrenheit  8.32999E+00     Celcius -1.31500E+01     Kelvin  2.60000E+02
Fahrenheit  4.43300E+01     Celcius  6.85001E+00     Kelvin  2.80000E+02
Fahrenheit  8.03300E+01     Celcius  2.68500E+01     Kelvin  3.00000E+02
Fahrenheit  1.16330E+02     Celcius  4.68500E+01     Kelvin  3.20000E+02
Fahrenheit  1.52330E+02     Celcius  6.68500E+01     Kelvin  3.40000E+02
Fahrenheit  1.88330E+02     Celcius  8.68500E+01     Kelvin  3.60000E+02
ajs94@wirth:~/CS214/projects/proj08/ada$ exit

Script done on Tue 11 Apr 2017 02:13:45 PM EDT
