var
  x, cycleEnd, prevX, result: Real;

begin
  // Ввод значения x
  Write('Введите значение x: ');
  ReadLn(x);
  
  cycleEnd := 8;
  prevX := x;

  // Цикл с шагом 0.3 и округлением
  x := -8;
  while x < cycleEnd do
  begin
    x := Round((x + 0.3) * 100) / 100;  // Округление до двух знаков после запятой

    // Вычисление результата в зависимости от диапазона x
    if prevX < -6 then
      result := Cos(2 * x) + Cos(x) - Power(x, 0.1 * x)
    else if prevX <= 1 then
      result := Ln(x) / Tan(x)
    else if prevX <= 6 then
      result := 22 + Power(x, 3)
    else
      result := Power(x, 0.1 * x) + x;

    // Вывод результата
    WriteLn('x = ', x:0:2, ', y = ', result:0:4);
  end;
end.
