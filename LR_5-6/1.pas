var
  arr1: array[1..4] of integer = (1, 3, 4, 18);
  arr2: array[1..4] of integer = (2, 6, 16, 12);
  sum1, sum2, i: integer;

begin
  writeln(arr1);
  writeln(arr2);

  sum1 := 0;
  sum2 := 0;

  for i := 1 to 4 do
    if arr1[i] > 0 then
      sum1 := sum1 + arr1[i];

  for i := 1 to 4 do
    if arr2[i] > 0 then
      sum2 := sum2 + arr2[i];

  if sum1 < sum2 then
  begin
    for i := 1 to 4 do
      arr1[i] := arr1[i] * 10;
    writeln(arr1);
  end
  else if sum2 < sum1 then
  begin
    for i := 1 to 4 do
      arr2[i] := arr2[i] * 10;
    writeln(arr2);
  end;
end.
