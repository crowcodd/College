{ Задание 2.13 }

var
  elIndex: integer;
  value, radius, area: real;

begin
  writeln('Введите номер элемента:');
  writeln('1 - Радиус');
  writeln('2 - Диаметр');
  writeln('3 - Длина окружности');
  readln(elIndex);
  
  if elIndex = 1 then
  begin
    writeln('Введите радиус:');
      readln(value);
      radius := value;
  end;
  
  if elIndex = 2 then
  begin
      writeln('Введите диаметр:');
      readln(value);
      radius := value / 2;
  end;

  if elIndex = 3 then
  begin
      writeln('Введите длину окружности:');
      readln(value);
      radius := value / (2 * pi);
  end;  
  
  area := pi * radius * radius;
  area := (round(area*1000))/1000;
  writeln('Площадь круга: ', area);
end.