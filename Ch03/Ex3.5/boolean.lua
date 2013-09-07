local function isBoolean(v)
  if (v==true) or (v==false) then
    return true
  end
  return false
end

print('====== First implementation =======')
print('true is boolean:',isBoolean(true))
print('false is boolean:',isBoolean(false))
print('"true" is boolean:',isBoolean("true"))
print('"nil" is boolean:',isBoolean(nil))
print('1 is boolean:',isBoolean(1))
print('table "_G" is boolean:',isBoolean(_G))
print('function "print" is boolean:',isBoolean(print))
print('func "function() end" is boolean:',isBoolean(function() end))

function isBoolean(v)
  return (not not v == v)
end

print('====== Alternative implementation =======')
print('true is boolean:',isBoolean(true))
print('false is boolean:',isBoolean(false))
print('"true" is boolean:',isBoolean("true"))
print('"nil" is boolean:',isBoolean(nil))
print('1 is boolean:',isBoolean(1))
print('table "_G" is boolean:',isBoolean(_G))
print('function "print" is boolean:',isBoolean(print))
print('func "function() end" is boolean:',isBoolean(function() end))