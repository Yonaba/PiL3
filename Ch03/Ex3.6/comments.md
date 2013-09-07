Ch03 - Ex 3.6
============

**Question**: *Consider the following expression:*
    
    (x and y and (not z)) or ((not y) and x)

*Are the parentheses necessary? Would you recommend their use in that expression?*

------------

**Solution**:

The parentheses in the original expression are not needed. The expression is evaluated the same without them.

    (x and y and (not z)) or ((not y) and x)

is the same as

    x and y and not z or not y and x

This has to do with operators precedence. The operators involved here are `and`, `or` and `not`. And the order of precedence, from the highest to the lowest, is:

* `not`
* `and`
* `or`

So when we consider the previous expression, `not z` and `not y` are evaluated first. Then, `x and y and not z` and `not y and x` are evaluated, and last, the `or` operation. We can notice that this order is preserved in the original expression given with parentheses.

However, the original statement is the one I would prefer, because of its clarity. Parentheses help us identify quickly what is evaluated first. Let us quote the book *Programming in Lua* (*p26*):

> When in doubt, always use explicit parentheses.


See [parentheses.lua](parentheses.lua) for implementation.