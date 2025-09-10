const
  N = 8; // Len arr

type
  TMatrix = array[1..N, 1..N] of Integer;
  TArray = array[1..N] of Integer;

// Генерация итогового массива
procedure CheckRows(const matrix: TMatrix; var resultArray: TArray);
var
  i, j, s: Integer;
  rowArr: array[1..N] of Integer;
  maxVal: integer;
  maxCount: integer;
begin
  for i := 1 to N do
  begin
    for j := 1 to N do
      rowArr[j] := matrix[i, j];
    
    maxVal := rowArr[1];
    maxCount := 0;
    
    // Найти максимальное значение
    for s := 1 to 8 do
      if rowArr[s] > maxVal then
       maxVal := rowArr[s];

    // Подсчитать количество вхождений максимума
    for s := 1 to 8 do
      if rowArr[s] = maxVal then
        Inc(maxCount);
    
    if maxCount = 1 then
      begin
      resultArray[i] := 1;
      end
    else begin
      resultArray[i] := -1;
      end;
  end;
end;

var
  matrix: TMatrix;
  resultArray: TArray;
  i, j: Integer;
begin
  // Инициализация матрицы случайными числами от 1 до 10
  Randomize;
  for i := 1 to N do
    for j := 1 to N do
      matrix[i, j] := Random(10) + 1;

  // Вывод исходной матрицы
  Writeln('Исходная матрица:');
  Writeln(matrix);

  CheckRows(matrix, resultArray);

  // Вывод результирующего массива
  Writeln('Результирующий массив:');
  Writeln(resultArray);
end.
