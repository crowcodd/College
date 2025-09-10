# Задача 3.21

res_data = dict()

while True:
    cat = str(input("Введите категорию или 'стоп' для окончания подсчёта: "))

    if(cat == "стоп"):
        sum_res = 0
        for cat in res_data:
            sum_res += res_data[cat]
            print(f"Категория '{cat}': {res_data[cat]}")
        
        print(f"Общая сумма: {sum_res}")
        break

    res_data[cat] = int(input(f"Введите данные по категории {cat}: "))