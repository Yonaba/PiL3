Ch02 - Ex 2.1
============

**Question**: *What is the value of the expression `type(nil)==nil`? (You can
use Lua to check your answer.) Can you explain this result?*

------------

**Solution**:

`type(nil)` returns the very string `"nil"`.<br>
As strings are values, by definition, they exist and cannot be `nil`.<br>
Therefore, `type(nil)==nil` translates as `"nil" == nil` which is evaluated as `false`.

See [expression.lua](expression.lua)