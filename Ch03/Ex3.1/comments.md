Ch03 - Ex 3.1
============

**Question**: *What will the following program print?*

    for i = -10, 10 do
      print(i, i % 3)
    end

------------

**Solution**:

The given program prints the modulo by `3` for each of the integers between `-10` and `10`.

**Note**: The modulo `%` operator is translated as:

    a % b = a - math.floor(a / b) * b

This raises an interesting case for negative numbers. While `math.floor(1 / 3)` returns `0`, `math.floor(-(1 / 3))` returns `-1`.<br>
For instance, let us consider the first operation, `-10 % 3 = -2`!

    -10 % 3 = -10 - math.floor(-10 / 3) * 3
            = -10 -       (-4)          * 3
            = -10 -             (-12)
            = -10 + 12
            =  2

See [modulo.lua](modulo.lua)