uses crt;

function f(x: Real): Real;
begin
  f := 2 * x * x * x + 2 * x * x + 2 * x + 19; // Вычисляем значение функции
end;

// Метод правых прямоугольников
function RightRectangleMethod(a, b: Real; n: Integer): Real;
var
  i: Integer;
  x, h, sum: Real;
begin
  h := (b - a) / n;
  sum := 0.0;

  // Цикл для сложнеших калькуляций
  for i := 1 to n do
  begin
    x := a + i * h; // Правая граница
    sum := sum + f(x);
  end;

  RightRectangleMethod := sum * h; // сумма * шаг
end;

// Оценка погрешности
function CalcError(a, b: Real; n: Integer): Real;
var
  integral1, integral2: Real;
begin
  integral1 := RightRectangleMethod(a, b, n);   // Интеграл с n частями
  integral2 := RightRectangleMethod(a, b, n * 2); // Интеграл с 2n частями
  CalcError := Abs(integral1 - integral2); // Разница
end;

// Основная программа
var
  a, b: Real;
  n, choice: Integer;
  result, error: Real;

begin
  ClrScr; // Протереть экран
  repeat
    // Меню через case
    writeln('1. Ввод пределов интегрирования');
    writeln('2. Вычисление S методом правых прямоугольников');
    writeln('3. Оценить погрешности');
    writeln('4. Выход exit');
    write('Выберите действие: ');
    readln(choice);

    case choice of
      1: 
        begin
          // Менюшка
          writeln('Введите нижний предел (a): ');
          read(a);
          writeln('Введите верхний предел (b): ');
          read(b);
          writeln('Введите кол-во разбиений (n): ');
          read(n);
        end;
      2: 
        begin
          // Посчитать площадь
          result := RightRectangleMethod(a, b, n);
          writeln(' ');
          writeln('S фигуры: ', result:0:2);
          writeln(' ');
        end;
      3: 
        begin
          // Оценка погрешности
          error := CalcError(a, b, n); 
          writeln(' ');
          writeln('Оценка погрешности: ', error:0:2);
          writeln(' ');
        end;
      4: 
        writeln('Bye bye')
    else
      writeln('Нет такой опцыы');
    end;
  until choice = 4; // Цикл работает до выхода
end.