arr = list(map(int, input("Введите числа через пробел: ").split()))

arr_counts = {}

for i in arr:
    if i in arr_counts:
        arr_counts[i] += 1
    else:
        arr_counts[i] = 1

max_rep = max(arr_counts, key=arr_counts.get)
print(max_rep)