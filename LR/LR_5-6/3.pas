var
  array_: array[1..20] of integer = (1, -5, 3, -2, 8, 0, -6, 7, -1, 4, 9, -3, 2, -8, 5, -4, 6, -9, 10, -7);
  res: array[1..40] of integer;
  i, j, n: integer;

begin
  j := 1;
  n := 20;
  for i := 1 to n do
  begin
    if array_[i] > 0 then
    begin
      res[j] := 0;
      j := j + 1;
    end;
    res[j] := array_[i];
    j := j + 1;
  end;

  for i := 1 to j - 1 do
    write(res[i], ' ');
end.