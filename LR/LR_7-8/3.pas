var
  text, result: string;
  i: Integer;
begin
  Write('Текст: ');
  ReadLn(text);
  result := '';

  i := 1;
  while i <= Length(text) do
  begin
    if (text[i] = 'x') and (Copy(text, i + 1, 3) = 'abc') then
    begin
      result := result + 'abc';
      i := i + 4;
    end
    else
    begin
      result := result + text[i];
      i := i + 1;
    end;
  end;

  WriteLn('Результат: ', result);
end.