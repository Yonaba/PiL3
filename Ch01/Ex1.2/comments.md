Ch01 - Ex 1.2
============

**Question**: *Run the `twice` example, both by loading the file with the -l
option and with `dofile`. Which way do you prefer ?*

--------------

**Solution**:

Loading the lib:

    > lua52 -l lib1
    > twice(5) 

Using `dofile`:

    > lua 52 -i
    > dofile('lib1.lua')
    > twice(5)

From my point of view, the `dofile` method seems preferrable here, even though both all ways work fine. The reason I am advancing here relies on what is said in the book itself, `dofile` stands well for testing purposes. I can easily change the code in [lib.lua](lib1.lua), re-dofile in the prompt and have the new implementation right available, while with the other method, the Lua prompt needs to be restarted again.