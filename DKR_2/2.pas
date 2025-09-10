var
  mainStr, subStr: string;
  mainLen, subLen, i, j, count, matchCount: Integer;

begin
  Write('Строка: ');
  ReadLn(mainStr);
  
  Write('Ищем: ');
  ReadLn(subStr);

  mainLen := Length(mainStr);
  subLen := Length(subStr);
  count := 0;

  if subLen > 0 then
    for i := 1 to mainLen - subLen + 1 do
    begin
      matchCount := 0;
      for j := 1 to subLen do
        if mainStr[i + j - 1] = subStr[j] then
          Inc(matchCount)
        else
          break;
      if matchCount = subLen then
        Inc(count);
    end;
    
  WriteLn('Кол-во вхождений = ', count);
end.