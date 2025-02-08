```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype Positive is Integer range 1 .. Integer'Last;
   My_Positive_Arr : array (Positive range <>) of Integer;
begin
   My_Positive_Arr := My_Array(My_Arr'Range => My_Arr);
   --Or using a loop for better clarity:
   --for i in My_Arr'Range loop
   --  My_Positive_Arr(i) := My_Arr(i);
   --end loop;
   --Other operations
end Example_Solution;
```