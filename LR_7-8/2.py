text = str(input("Текст: "))
plus_cnt = 0
minus_cnt = 0
plus_zero_cnt = 0
minus_zero_cnt = 0

for i in range(len(text)):
    if (text[i] == "+"):
        plus_cnt += 1
        if ((i+1) <= len(text) and text[i+1] == "0"):
            plus_zero_cnt += 1

print("-: " + str(minus_cnt))
print("+: " + str(plus_cnt))
print("-0: " + str(minus_zero_cnt))
print("+0: " + str(plus_zero_cnt))