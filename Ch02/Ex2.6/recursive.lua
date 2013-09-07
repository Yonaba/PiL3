a = {}
a.a = a

print('a.a == a', a.a == a)
print('a.a.a == a', a.a.a == a)
print('a.a.a.a == a', a.a.a.a == a)


a.a.a.a = 3
print('recursion broken')
print('a.a == 3', a.a == 3)