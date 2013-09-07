local str1 = [=[<![CDATA[
  Hello world
]]>]=]
local str2 = '<![CDATA[\n  Hello world\n]]>'
local str3 = 
 '\060\033\091CDATA\091\010\z
  \032\032Hello\032world\z
  \010\093\093\062'
print(str1)
print('str1 == str2 ?', str1 == str2)
print('str1 == str3 ?', str1 == str3)
print('str2 == str3 ?', str2 == str3)