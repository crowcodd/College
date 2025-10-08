{ Задание 1.7.8 }

var
  x, y, a, b: integer;
  t: boolean;

begin
  write('Введите x: ');
  readln(x);
  
  write('Введите y: ');
  readln(y);
  
  write('Введите a: ');
  readln(a);
  
  write('Введите b: ');
  readln(b);

  t := (x >= a) and (x <= b) and (y >= a) and (y <= b);
  
  writeln('T: ', t);
end.
