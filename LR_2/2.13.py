# Задание 2.13

import math

el_index = int(input("Введите номер элемента:\n1 - Радиус\n2 - Диаметр\n3 - Длина окружности\n"))

if el_index == 1:
    value = int(input("Введите радиус:\n"))
    radius = value
elif el_index == 2:
    value = int(input("Введите диаметр:\n"))
    radius = value / 2
elif el_index == 3:
    value = int(input("Введите длину окружности:\n"))
    radius = value / (2 * math.pi)

area = math.pi * radius ** 2
area = round(area, 3)

print("Площадь круга:" + str(area))