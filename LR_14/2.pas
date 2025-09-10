{
sumTo(n) -> sumTo(n-1)...sumTo(1)
глубина:n + 1
объём:n
}

function sumTo(n: Integer): Integer;
begin
  if n = 1 then
    sumTo := 1
  else
    sumTo := n + sumTo(n - 1);
end;

var
  n, result: Integer;

begin
  Write('Введите число n: ');
  ReadLn(n);
  
  result := sumTo(n);
  WriteLn('Сумма чисел от 1 до ', n, ' = ', result);
end.
