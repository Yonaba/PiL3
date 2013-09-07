Ch03 - Ex 3.4
============

**Question**: *Can you write the function from the previous item ([cf. Ex3.4 - Ch03](https://github.com/Yonaba/PiL3/blob/master/Ch03/Ex3.3/polynomial.lua)) so that it uses
at most `n` additions and `n` multiplications (and no exponentiations)?*

------------

**Solution**:

In the [previous implementation](https://github.com/Yonaba/PiL3/blob/master/Ch03/Ex3.3/polynomial.lua), we had this polynomial function.

    local function polynomial(t,v)
      local r = t[1]  -- Gets a0
      for i = 2,#t do 
        r = r + (t[i]*(v^(i-1)))
      end
      return r
    end

To meet the new guidelines, we need to get rid of the exponentiation `v^(i-1)`.
We can actually replace this by a set of multiplications:

    local m = 1
    for k = 1, i-1 do
      m = m * v
    end

Hence, the new implementation of the polynomial function:

    local function polynomial(t,v)
      local r = t[1]  -- Gets a0
      for i = 2,#t do
        local m = 1
        for k = 1, i-1 do
          m = m * v
        end
        r = r + (t[i] * m)
      end
      return r
    end

See [polynomial2.lua](polynomial2.lua)