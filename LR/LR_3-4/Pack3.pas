{ Задача 3.21 }

var
  res_data: array[1..100] of record
    cat: string;
    value: integer;
  end;
  i, sum_res, cnt: integer;
  cat: string;
  inp_val: integer;

begin
  cnt := 0;
  
  while True do
  begin
    WriteLn('Введите категорию или "стоп" для окончания подсчёта: ');
    ReadLn(cat);

    if cat = 'стоп' then
    begin
      sum_res := 0;
      
      for i := 1 to cnt do
      begin
        sum_res := sum_res + res_data[i].value;
        WriteLn('Категория ', res_data[i].cat, ': ', res_data[i].value);
      end;
      
      WriteLn('Общая сумма: ', sum_res);
      Break;
    end;
    
    cnt := cnt + 1;
    WriteLn('Введите данные по категории ', cat, ': ');
    ReadLn(inp_val);
    
    res_data[cnt].cat := cat;
    res_data[cnt].value := inp_val;
  end;
end.
