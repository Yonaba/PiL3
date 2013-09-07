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

-- Let f(x):= 3x^2+2*x+1. f(3) should return 34
print(polynomial({1,2,3},3))