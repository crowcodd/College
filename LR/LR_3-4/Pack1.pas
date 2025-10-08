{ Задача 1.2 }

var
    step_val: integer;
    start_val: integer;
    end_val: integer;
    x: real;
    y: real;

begin
    WriteLn('Введите шаг:');
    ReadLn(step_val);

    start_val := 2;
    end_val := 12;

    x := start_val;
    y := 0;

    while y <= end_val do
    begin
        y := x**step_val;
        WriteLn('y = ' + y + ', x = ' + x);
        x := x + step_val;
    end;

end.