# Ada Constraint_Error with Array Assignment
This example demonstrates a potential Constraint_Error in Ada when assigning an array with a constrained subtype to an array with an unconstrained subtype. The error arises when the index subtype of the source array is not a subset of the index subtype of the target array.

## Problem
The code attempts to assign the values of 'My_Arr' to 'My_Positive_Arr'. However, Ada's type system prevents this direct assignment due to the incompatibility between the index subtypes. 'My_Arr' has an index subtype of 1..10, while 'My_Positive_Arr' has an index subtype of Positive range <>, which can potentially include values outside the range 1..10.  Therefore, the compiler detects a potential constraint violation and raises Constraint_Error at runtime.

## Solution
The solution involves explicitly copying elements while ensuring the index range is handled correctly.  This avoids direct assignment and handles potential index issues.