{ Задание 1.5.F }

var x: real;

begin
  writeln('Введите значение x: ');
  readln(x);
  
  if (x >= 2) and (x <= 5) or (x >= -1) and (x <= 1) then
    writeln('x принадлежит одному из промежутков')
  else
    writeln('x не принадлежит промежуткам');
end.