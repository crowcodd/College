# Задача 4.3

cnt = int(input("Введите количество спортсменов: "))
norma = int(input("Введите норму: "))
sport_data = dict()
norma_cnt = 0

for _ in range(cnt):
    name = str(input("Введите имя спортсмена: "))
    km = int(input("Введите километраж: "))
    sport_data[name] = km
    if(km >= norma):
        norma_cnt += 1

mr = max(sport_data, key=sport_data.get)

print(f"Сделали норму: {norma_cnt} чел.")
print(f"Лучший спортсмен: {mr} - {sport_data[mr]} км.")