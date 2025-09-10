uses crt;

var
  number, max_divisor, choice, i, count: Integer;
  divisors: array of Integer;
begin
  number := -1;
  max_divisor := -1;

  while True do
  begin
    Writeln(' ');
    Writeln('Меню:');
    Writeln('1 - Ввести число');
    Writeln('2 - Ввести максимальный делитель');
    Writeln('3 - Подсчитать делители');
    Writeln('4 - Выход');

    Write('> ');
    Readln(choice);

    case choice of
      1:
        begin
          Write('Введите число: ');
          Readln(number);
          Writeln('Число задано: ', number);
        end;

      2:
        begin
          Write('Введите максимальный делитель: ');
          Readln(max_divisor);
        end;

      3:
        begin
          if (number = -1) or (max_divisor = -1) then
          begin
            Writeln('Ошибка: необходимо сначала установить число и максимальный делитель');
          end
          else
          begin
            count := 0;
            SetLength(divisors, 0);

            for i := 1 to max_divisor do
            begin
              if number mod i = 0 then
              begin
                count := count + 1;
                SetLength(divisors, count);
                divisors[count - 1] := i;
              end;
            end;

            Writeln('Количество делителей: ', count);
            Writeln('Список делителей:');
            
            for i := 0 to count - 1 do
            begin
              Writeln(number, ' / ', divisors[i], ' = ', number div divisors[i]);
            end;
            
            Writeln(' ');
          end;
        end;

      4:
        begin
          Writeln('Выход из программы');
          Break;
        end;

      else
        Writeln('Ошибка: выберите корректный пункт меню');
    end;
  end;
end.