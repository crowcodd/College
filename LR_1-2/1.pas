program SKRUG;

var rad,s:real; pi: real = 3.14159265358979;

begin
  // Считываем значение
  writeln('Введите радиус круга');
  readln(rad);
  
  // Считаем площадь
  s := pi * rad ** 2;

  writeln('S = ', s);
end.