Ch03 - Ex 3.7
============

**Question**: *What will the following script print? Explain*.

    sunday = "monday"; monday = "sunday"
    t = {sunday = "monday", [sunday] = monday}
    print(t.sunday, t[sunday], t[t.sunday])

------------

**Solution**:

The script prints:

    monday	sunday	sunday


* `t.sunday` is the same as `t["sunday"]`. We can see from the given script that it corresponds to the string `"monday"`.

````
t = {sunday = "monday"}
print(t.sunday) --> "monday"
````

* `t[sunday]` is resolved as `t["monday"]`, because variable `sunday` used to index in table `t` was previously assigned that value. Then it gets the value of variable `monday`, which is the string `"sunday"`. (quite a mess, huh ?)

````
sunday = "monday"
monday = "sunday"
t = {[sunday] = monday}
print(t[sunday]) --> "sunday"
````

* `t[t.sunday]` translates as `t["monday"]`, which corresponds to `t[sunday]`. Therefore, it returns the value of variable `monday`, `"sunday"`.

````
t = {sunday = "monday"}
sunday = "monday"
monday = "sunday"
t[sunday] = monday
print(t[t.sunday]) --> "sunday"
````

See [daysaremessed.lua](daysaremessed.lua).