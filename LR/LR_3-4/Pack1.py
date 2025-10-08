# Задача 1.2

step = int(input())

start = 2
end = 12

x = start
y = 0

while y <= end:
    y = x**2
    print(f"y = {y}, x = {x}")
    x += step