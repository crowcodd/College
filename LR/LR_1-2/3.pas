program PeaceOfShit;

var a,b,c:integer; d,x1,x2:real;

begin
  // Считываем значение
  writeln('Введите a, b и c для уравнения');
  readln(a, b, c);
  
  // Считаем дискриминант
  d := b*b - 4*a*c;
  writeln('d = ', d);
  
  // Если нет корней
  if d<0 then
    begin
      writeln('net korney!');
    end;
    
  // Если есть один корень
  if d=0 then
    begin
      x1 := -b / (2*a);
      writeln('1 корень в уравнении');
      writeln('x = ', x1);
    end;
    
  // Если корня у нас два
  if d>0 then
    begin
      x1 := (-b + sqrt(d)) / (2*a);
      x2 := (-b - sqrt(d)) / (2*a);
      writeln('2 корня в уравнении');
      writeln('x1 = ', x1);
      writeln('x2 = ', x2);
    end;
end.