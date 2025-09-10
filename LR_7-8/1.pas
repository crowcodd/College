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
    if Copy(text, i, 7) = 'Nikolay' then
    begin
      result := result + 'Oleg';
      i := i + 7;
    end
    else
    begin
      result := result + text[i];
      i := i + 1;
    end;
  end;

  WriteLn(result);
end.