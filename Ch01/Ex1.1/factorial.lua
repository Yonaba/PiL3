-- Sample provided in the book

-- Defines a factorial function
function fact(n)
  if n == 0 then
    return 1
  else
    return n * fact(n-1)
  end
end

print("Enter a number:")
a = io.read('*n')
print(fact(a))