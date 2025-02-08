```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype Positive is Integer range 1 .. Integer'Last;
   My_Positive_Arr : array (Positive range <>) of Integer;
begin
   My_Positive_Arr := My_Arr;
   --Other operations
end Example;
```