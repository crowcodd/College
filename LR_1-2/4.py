a = int(input("Введите a"))
b = int(input("Введите b"))

if a == 0 and b == 0:
    print(f'INF')

if a == 0 and b != 0:
    print(f'NO')

if a != 0 and b != 0:
    res = -b / a
    print(res)