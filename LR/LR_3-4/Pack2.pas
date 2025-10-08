{ Задача 2.6 }

var
  cnt, i, value: integer;
  sum_res: real;
begin
  sum_res := 0;
  writeln('Кол-во учеников: ');
  readln(cnt);

  for i := 1 to cnt do
  begin
    writeln('Рост: ');
    readln(value);
    sum_res := sum_res + value;
  end;

  writeln(Round((sum_res / cnt) * 100) / 100);
end.