array = [1, -5, 3, -2, 8, 0, -6, 7, -1, 4, 9, -3, 2, -8, 5, -4, 6, -9, 10, -7]

result = []

for num in array:
    if num > 0:
        result.append(0)
    result.append(num)

print(result)