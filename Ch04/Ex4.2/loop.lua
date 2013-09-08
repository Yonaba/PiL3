local function repeat_loop()
  repeat
  print('repeat loop')
  until (false)
end

local function while_loop()
  while (true) do
    print('while loop')
  end
end

local function for_loop()
  for i = 1, math.huge do
    print('For loop')
  end
end

local function goto_loop()
  do
    ::redo::
    print('goto loop')
    goto redo
  end
end