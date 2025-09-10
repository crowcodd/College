from math import sqrt

# Считываем значения
a = int(input('Введите a: '))
b = int(input('Введите b: '))
c = int(input('Введите c: '))

# Считаем дискриминант
d = b**2 - 4*a*c
print(f'd = {d}')

# Если нет корней
if d < 0:
    print('Нет корней!')

# Если есть один корень
elif d == 0:
    x1 = -b / (2*a)
    print('1 корень в уравнении')
    print(f'x = {x1}')

# Если два корня
else:
    x1 = (-b + sqrt(d)) / (2*a)
    x2 = (-b - sqrt(d)) / (2*a)
    print('2 корня в уравнении')
    print(f'x1 = {x1}')
    print(f'x2 = {x2}')
