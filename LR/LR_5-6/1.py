arr1 = [1, 3, 4, 18]
arr2 = [2, 6, 16, 12]

print(arr1)
print(arr2)

sum1 = 0
sum2 = 0

for i in arr1:
    if(i > 0):
        sum1 += i

for i in arr2:
    if(i > 0):
        sum2 += i

if(sum1 < sum2):
    for i in range(len(arr1)):
        arr1[i] = arr1[i] * 10
    print(arr1)
elif(sum2 < sum1):
    for i in range(len(arr2)):
        arr2[i] = arr2[i] * 10
    print(arr2)