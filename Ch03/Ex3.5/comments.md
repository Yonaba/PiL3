Ch03 - Ex 3.5
============

**Question**: *How can you check whether a value is a boolean without using
the type function?*

------------

**Solution**:

We can actually do this in two manners.

* The first technique makes use of the fact differents types are not evaluated the same way. Therefore, even though `not true` and `not 1` are both `false` to Lua, those values have different types. So, to check if a given parameter is a boolean, we roughly compare it to `true` or `false`.

````
local function isBoolean(v)
  if (v==true) or (v==false) then
    return true
  end
  return false
end
````

* The other way is quite hacky, yet shorter.

````
function isBoolean(v)
  return (not not v == v)
end
````

Here, we are taking advantage of the fact that given a boolean `b` , the statement `not(not(b))` returns the boolean itself. So, `not(not(b))` is granted to be always equal to `b`, and this trick can help identifying any boolean.

In case `b` is of any other type (even `nil`), `not(not(b))` would be `true`, but the boolean `true` cannot be equal to the initial value `b` (because `b` was not intially a boolean).

See [boolean.lua](boolean.lua).