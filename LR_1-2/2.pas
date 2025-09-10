program NumbersOp;

var number, i1, i2, i3, i4, sum, res: integer;

begin
  // Считываем значение
  writeln('Введите четырёхзначное число');
  readln(number);

  i1 := number div 1000;
  i2 := (number div 100) mod 10;
  i3 := (number div 10) mod 10;
  i4 := number mod 10;
  
  // Сумма и произведение
  sum := i1 + i2 + i3 + i4;
  res := i1 * i2 * i3 * i4;
  
  // Выводим результат
  writeln('Сумма: ', sum);
  writeln('Произведение: ', res);
end.