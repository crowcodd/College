var
  arr: array of Integer;
  n, i, sum: Integer;
  average: Real;

begin
  Write('Кол-во элем: ');
  ReadLn(n);
  SetLength(arr, n);
  
  sum := 0;

  for i := 0 to n - 1 do
  begin
    Write('Элемент ', i + 1, ': ');
    ReadLn(arr[i]);
    sum := sum + arr[i];
  end;

  if n > 0 then
    average := sum / n
  else
    average := 0;

  WriteLn('Ср. арифм. = ', average:0:2);
end.