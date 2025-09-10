const N = 10; // Глобальная константа

type
  TArray = array[1..N] of Integer;

var
  A, B: TArray; // Глобальная переменная
  i: Integer;   // Глобальная переменная
  MaxIndex:Integer; // Глобальная переменная

// Функция нахождения индекса максимального элемента
function FindMaxIndex(const Arr: TArray): Integer; // Передача параметра
var
  i, MaxIndex: Integer; // Локальные переменные
begin
  MaxIndex := 1;
  for i := 2 to N do
    if Arr[i] > Arr[MaxIndex] then
      MaxIndex := i;
  FindMaxIndex := MaxIndex;
end;

// Функция нахождения индекса минимального элемента
function FindMinIndex(const Arr: TArray): Integer; // Передача параметра
var
  i, MinIndex: Integer; // Локальные переменные
begin
  MinIndex := 1;
  for i := 2 to N do
    if Arr[i] < Arr[MinIndex] then
      MinIndex := i;
  FindMinIndex := MinIndex;
end;

// Удвоение элементов
procedure DoubleAfterMin(var Arr: TArray); // Передача параметра по ссылке
var
  MinIndex, i: Integer; // Локальные переменные
begin
  MinIndex := FindMinIndex(Arr);
  for i := MinIndex + 1 to N do
    Arr[i] := Arr[i] * 2;
end;

// Основная программа
begin
  Randomize;

  // Заполнение массивов
  for i := 1 to N do
    A[i] := Random(100) - 50; // Заполнение случайными числами
  for i := 1 to N do
    B[i] := Random(100) - 50; // Заполнение случайными числами

  // Вывод исходных массивов
  Writeln('Исходные:');
  Write('A: ');
  WriteLn(A);
  Write('B: ');
  WriteLn(B);
  
  // Замена максимальных элементов нулями
  if FindMaxIndex(A) < FindMaxIndex(B) then begin
    MaxIndex := FindMaxIndex(A);
    A[MaxIndex] := 0;
    end
  else begin
    MaxIndex := FindMaxIndex(B);
    B[MaxIndex] := 0;
    end;

  DoubleAfterMin(A);
  DoubleAfterMin(B);

  // Вывод обработанных массивов
  Writeln('Результат:');
  Write('A: ');
  WriteLn(A);
  Write('B: ');
  WriteLn(B);
end.