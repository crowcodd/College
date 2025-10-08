var
  x, result: Real;	

begin
  // Ввод значения x
  Write('Введите значение x: ');
  ReadLn(x);

  if x < -6 then
    result := Cos(2 * x) + Cos(x) - Power(x, 0.1 * x)
  else if x <= 1 then
    result := Ln(x) / Tan(x)
  else if x <= 6 then
    result := 22 + Power(x, 3)
  else
    result := Power(x, 0.1 * x) + x;

  // Вывод результата
  WriteLn('Результат: ', result:0:2);
end.