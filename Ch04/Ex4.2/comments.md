Ch04 - Ex 4.2
============

**Question**: *Describe four different ways to write an unconditional loop in
Lua. Which one do you prefer?*.

------------

We define an **unconditional loop** (or *infinite loop*) as a loop that meets with the following constraints:

* The looping condition will always evaluate to `true`.
* None of the variables that determine the looping condition must be assigned within the loop.


We will make use of repetitive constrol structures that Lua offers.

* repeat...until

````
repeat
  print('repeat loop')
until (false)
````

* while...do...end

````
while (true) do
  print('While loop')
end
````

* for..do...end
````
for i = 1, math.huge do
  print('For loop')
end
````

* `goto`

````
do
  ::redo::
  print('goto loop')
  goto redo
end
````

**Note**: the `goto` statement was introduced in *Lua 5.2*.

See [loop.lua](loop.lua).