{
stepen(a,b)->stepen(a, b-1)...stepen(a, 0) - база
объём: b
глубина: b + 1
}

var x, y: integer;
function stepen(a, b: integer): integer;
begin
  if b = 0 then
    stepen := 1
  else
    stepen := a * stepen(a, b - 1);
end;

begin
  writeln('число?');
  readln(x);
  writeln('степень?');
  readln(y);
  writeln(stepen(x, y));
end.