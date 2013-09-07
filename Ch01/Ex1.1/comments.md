Ch 01 - Ex1.1
=============

**Question**: *Run the factorial example. What happens to your program if you
enter a negative number? Modify the example to avoid this problem.*

----------------

**Solution**:

Running the program with a negative number results in a stack overflow. The given initial function is recursive, and there is no way to break the recursion starting from a negative number. Hence the overflow.<br>
See [factorial.lua](factorial.lua)

To fix the problem, we can slightly modify the function so that it just returns when it receives a negative number.<br>
See [factorialfix.lua](factorialfix.lua).