Ch02 - Ex 2.6
============

**Question**: *Assume the following code:*
    
    a = {}; a.a = a

*What would be the value of `a.a.a.a`?
<br>Is any `a` in that sequence somehow
different from the others?<br><br>
Now, add the next line to the previous code:*

    a.a.a.a = 3

*What would be the value of `a.a.a.a` now?*

-------------

**Solution**:

This an interesting case of recursive table.
The statement `a = {}` declares a global table.
Then adding `a.a = a`, the string key `"a"` woould now point to table `a` itself in `a`.

    a = {}
    a.a = a
    print(a.a == a) --> true

From now on, because Lua evaluates statements left-to-right, we can do silly things:

    print(a.a.a == a) --> true
    print(a.a.a.a == a) --> true
    print(a.a.a.a.a == a) --> true
    print(a.a.a.a.a.a == a) --> true
    print(a.a.a.a.a.a.a == a) --> true

The key concept lies in the prior statement `a.a = a`. On that basis, the statement `a.a.a` translates as `(a.a).a` (or `(a.a)["a"]`), which is still `a`.
Therefore, `a.a.a.a` translates as `(a.a)a.a` which in turns becomes `(a.a).a`... and so on.

If we set `a.a.a.a = 3`, it is reduced to `a.a = 3`. This way, we are breaking the recursive trick.

    print(a.a == 3) --> true
    print(a.a.a) --> Error
    print(a.a.a.a == a) --> Error 

See [recursive.lua](recursive.lua).