text = str(input("Текст: "))
for i in range(len(text)):
    if text[i] == "Nikolay":
        text[i] = "Oleg"

print(' '.join(text))