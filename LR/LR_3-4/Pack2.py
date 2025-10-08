# Задача 2.6

cnt = int(input("Кол-во учеников: "))
sum_res = 0

for _ in range(cnt):
    sum_res += int(input(f"Введите рост {cnt + 1}: "))

print(round(sum_res / cnt * 100) / 100)