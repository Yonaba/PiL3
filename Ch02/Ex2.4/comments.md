Ch02 - Ex 2.4
============

**Question**: *How can you embed the following piece of XML as a string in
Lua?*

    <![CDATA[
      Hello world
    ]]>

*Show at least two different ways.*

-------------

**Solution**:

* *first way*: double square brackets

    local str1 = [=[<![CDATA[
      Hello world
    ]]>]=]

* *second way*: single (or double) quotes, nested with `\n`

    local str2 = '<![CDATA[\n  Hello world\n]]>'

* *third way*: escape sequences (just to replace fancy characters)

    local str3 = 
     '\060\033\091CDATA\091\010\z
     \032\032Hello\032world\z
     \010\093\093\062'

*Note*: the third method uses sequence `\z` which was introduced in Lua 5.2.

See [embedding.lua](embedding.lua).