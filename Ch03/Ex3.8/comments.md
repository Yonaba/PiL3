Ch03 - Ex 3.8
============

**Question**: *Suppose that you want to create a table that associates each
escape sequence for strings with its meaning. How could you
write a constructor for that table?*.

------------

Escapes sequences are:

> \a : bell <br>
> \b : back space <br>
> \f : form feed <br>
> \n : newline <br>
> \r : carriage return <br>
> \t : horizontal tab <br>
> \v : vertical tab <br>
> \\ : backslash <br>
> \" : double quote <br>
> \' : single quote <br>

To list them in a table, map-like, each sequence associated with its meaning, we can use the general-form table constructor:

    local escapeseq = {
      ['\a'] = 'bell',
      ['\b'] = 'back space',
      ... 
    }

See [escapes.lua](escapes.lua).

The record style cannot be used here, because in that case, each key has to be a valid lua identifier. As `\` is not allowed in Lua identifiers, the following cannot be valid.

    local escapeseq = { \a = 'bell', \b = 'back space', ... }

