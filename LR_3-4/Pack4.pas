{ Задача 4.3 }

var
  res_data: array[1..100] of record
    value: integer;
  end;
  i, sum_res, cnt: integer;
  cat: string;
  inp_val: integer;
  norma: integer;
  s_name: string;
  s_val: integer;
  sum_norma: integer;
  best_sportsmen: string;
  best_sportsmen_km: integer;

begin
  WriteLn('Введите количество спортсменов: ');
  ReadLn(cnt);

  WriteLn('Введите норму: ');
  ReadLn(norma);

  best_sportsmen_km := 0;

  for i := 1 to cnt do
  begin
    WriteLn('Введите имя спортсмена: ');
    ReadLn(s_name);

    WriteLn('Введите км спортсмена: ');
    ReadLn(s_val);

    if s_val >= norma then
    begin
        sum_norma := sum_norma + 1;
    end;

    if s_val > best_sportsmen_km then
    begin
        best_sportsmen_km := s_val;
        best_sportsmen := s_name;
    end;
  end;

  WriteLn('Превысили норму: ' + sum_norma);
  WriteLn('Лучший спортсмен: ' + best_sportsmen + ' - ' + best_sportsmen_km + ' км.');
end.
