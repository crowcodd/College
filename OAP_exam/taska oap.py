number = -1
max_divisor = -1
choice = 0

while True:
    print(" ")
    print("Меню")
    print("1 - Ввести число")
    print("2 - Ввести максимальный делитель")
    print("3 - Подсчитать делители")
    print("4 - Выход")

    choice = int(input("Введите ваш выбор: "))

    if choice == 1:
        number = int(input("Введите число: "))
        print(f"Число задано: {number}")

    elif choice == 2:
        max_divisor = int(input("Введите максимальный делитель: "))
        print(f"Максимальный делитель задан: {max_divisor}")

    elif choice == 3:
        if number == -1 or max_divisor == -1:
            print("Ошибка: необходимо сначала установить число и максимальный делитель")
        else:
            i = 1
            count = 0
            divisors = []

            while i <= max_divisor:
                if number % i == 0:
                    count += 1
                    divisors.append(i)
                i += 1

            print(f"Количество делителей: {count}")
            print("Список делителей:", divisors)

            for k in range(count):
                print(f"{number} / {divisors[k]} = {number // divisors[k]}")

    elif choice == 4:
        print("Выход из программы")
        break

    else:
        print("Ошибка: выберите корректный пункт меню.")