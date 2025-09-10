text = input("Текст: ")
result = ""

i = 0
while i < len(text):
    if text[i] == 'x' and text[i+1:i+4] == 'abc':
        result += text[i+1:i+4]
        i += 4
    else:
        result += text[i]
        i += 1

print("Результат:", result)