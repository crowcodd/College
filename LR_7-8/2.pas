var
  text: string;
  i, plus_cnt, minus_cnt, plus_zero_cnt, minus_zero_cnt: Integer;
begin
  Write('Текст: ');
  ReadLn(text);
  
  plus_cnt := 0;
  minus_cnt := 0;
  plus_zero_cnt := 0;
  minus_zero_cnt := 0;

  for i := 1 to Length(text) do
  begin
    if text[i] = '+' then
    begin
      plus_cnt := plus_cnt + 1;
      if (i < Length(text)) and (text[i + 1] = '0') then
        plus_zero_cnt := plus_zero_cnt + 1;
    end
    else if text[i] = '-' then
    begin
      minus_cnt := minus_cnt + 1;
      if (i < Length(text)) and (text[i + 1] = '0') then
        minus_zero_cnt := minus_zero_cnt + 1;
    end;
  end;

  WriteLn('-: ', minus_cnt);
  WriteLn('+: ', plus_cnt);
  WriteLn('-0: ', minus_zero_cnt);
  WriteLn('+0: ', plus_zero_cnt);
end.