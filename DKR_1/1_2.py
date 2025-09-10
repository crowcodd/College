import math

# Функция для подсчетка значений
def cnt(x, type):
    if type == 1:
        return math.cos(2 * x) + math.cos(x) - x ** (0,1 * x)
    elif type == 2:
        return math.log(x) / math.tan(x)
    elif type == 3:
        return 22 + x ** 3
    elif type == 4:
        return x ** (0,1 * x) + x

# Задаём переменные
x = int(input())
count_type = -1

# Условия
if x < -6:
    count_type = 1
elif -6 <= x <= 1:
    count_type = 2
elif 1 <= x <= 6:
    count_type = 3
elif x > 6:
    count_type = 4

# Выводим результат
print(f"Результат: {cnt(x, count_type)}")

cycle_start = -8
cycle_end = 8
# Цикл
x = cycle_start
while x < cycle_end:
    x = round((x + 0.3) * 100) / 100
    print(f"x = {x}, y = {cnt(x, count_type)}")