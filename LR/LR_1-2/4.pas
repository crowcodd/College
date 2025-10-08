program ReshiMne;

var a,b:integer; var res:real;

begin
  // Принимаем значения
  writeln('Введите a и b');
  readln(a, b);
  
  if (a = 0) and (b = 0) then
  begin
    println('INF')
  end;
  
  if (a = 0) and (b <> 0) then
  begin
    println('NO')
  end;
  
  if (a <> 0) and (b <> 0) then
  begin
    res := (-b)/a;
    println(res);
  end;
end.