Ch04 - Ex 4.1
============

**Question**: *Most languages with a C-like syntax do not offer an **elseif**
construct. Why does Lua need this construct more than those languages?*.

------------

In C-like syntax, to handle multiple `if`-clauses, the **else if** construct is granted.

    if (expression)
      {
        Block of statements;
      }
    else if(expression)
      {
        Block of statements;
      }
    else
      {
        Block of statements;
      }

For convenience, they mostly also offer the **switch** construct:

    switch( expression )
         {
            case constant-expression1:	statements1;
            [case constant-expression2:	statements2;]    
            [case constant-expression3:	statements3;]
            [default : statements4;]
         }

Lua does not offer the **switch** syntax, but a slightly different construct, **elseif** which has the advantage to prevent from the need of lots of `end`'s statements.

    if (condition) then
        <statement>
    elseif (condition) then
        <statement>
    else
    end