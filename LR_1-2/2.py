# Считываем значение
number = int(input('Введите четырёхзначное число: '))

# Извлечение цифр числа
i1 = number // 1000
i2 = (number // 100) % 10
i3 = (number // 10) % 10
i4 = number % 10

# Сумма и произведение
sum_digits = i1 + i2 + i3 + i4
product_digits = i1 * i2 * i3 * i4

# Выводим результат
print(f'Сумма: {sum_digits}')
print(f'Произведение: {product_digits}')