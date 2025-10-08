# Ввод данных
x = int(input("Введите X: "))
y = int(input("Введите Y: "))
k = int(input("Введите K: "))

# Проверка, достаточно ли меда
if (x * y) >= k:
    print('YES')
else:
    print('NO')