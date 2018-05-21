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

