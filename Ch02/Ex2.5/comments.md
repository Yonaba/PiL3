Ch02 - Ex 2.5
============

**Question**: *Suppose you need to format a long sequence of arbitrary bytes
as a string literal in Lua. How would you do it? Consider issues like readability,
maximum line length, and performance.*

-------------

**Solution**:

Use double square brackets. It is fast enough, support very long strings, it is readable as it can be spanned on multiples lines, and keeps formatting safe.<br>


See [embedding.lua](embedding.lua).