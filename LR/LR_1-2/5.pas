program HoneyCounterLol;

var x,y,k:integer;

begin
  // Ввод данных
  writeln('Введите X, Y и K');
  readln(x, y, k);
  
  // Проверка, достаточно ли меда
  if (x * y) >= k then
    begin
    writeln('YES');
    end
  else
    writeln('NO');
end.