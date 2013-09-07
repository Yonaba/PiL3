local function evalP(x,y,z)
  return (x and y and (not z)) or ((not y) and x)
end

local function eval(x,y,z)
  local notz = not(z)
  local noty = not(y)
  
  local xandyandnotz = x and y and notz
  local notyandx = noty and x

  return xandyandnotz or notyandx
end

x, y, z = true, false, true
print("Eval == EvaP for x,y,z", eval(x,y,z) == evalP(x,y,z))