x = 1
y = 3
t = True
z = False

#   1   4     3    5      2
# (x>=0) or t and z or (y*y<>4)
# Первое действие - (x>=0)
# Второе действие - (y*y<>4)
# Третье действие - .. t and z ..
# Четвёртое - .. or t ..
# Пятое - .. z or ..

# Proof Of Concept

# Ожидаем: True
print((x >= 0) or t and z or (y * y != 4))