Ch03 - Ex 3.1
============

**Question**: *What is the result of the expression `2^3^4`? What about `2^-3^4`?*

------------

**Solution**:

In the expression `2^3^4`, operator precedence is resolved right to left. Without explicit parentheses, `2^3^4` translates as `2^(3^4) = 2 ^ 81`.<br>
The same rule applies to the expression `2^-3^4`which is evaluated as `2^-81`.

See [power.lua](power.lua)