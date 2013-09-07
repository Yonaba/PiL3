local function toFract(num, denum, round, times)
  print(('Is there an integer z so that: (z/2^n) == %s ?')
    :format(num))
  local iteration
  repeat
    iteration = (iteration or 0) + 1
    local denominator = denum ^ iteration    
    local numerator = round(num) * (denominator)
    local fract = numerator / denominator
    print(('%s/%s = %s (~= %s)')
      :format(numerator, denominator, fract, num))
  until (iteration > times)

end

toFract(12.7, 2, math.ceil, 5)
toFract(5.5, 2, math.ceil, 5)