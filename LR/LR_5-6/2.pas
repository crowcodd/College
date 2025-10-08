var
  arr: array[1..10] of integer = (1, 3, 2, 3, 5, 3, 2, 4, 8, 12);
  arr_counts: array[0..100] of integer;
  i, max_rep, max_val: integer;

begin
  for i := Low(arr_counts) to High(arr_counts) do
    arr_counts[i] := 0;

  for i := 1 to 10 do
    arr_counts[arr[i]] := arr_counts[arr[i]] + 1;

  max_rep := -1;
  max_val := arr[1];
  
  for i := Low(arr_counts) to High(arr_counts) do
    if arr_counts[i] > max_rep then
    begin
      max_rep := arr_counts[i];
      max_val := i;
    end;

  writeln(max_val);
end.
