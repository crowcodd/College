{
PoiskNOD(a, b) -> PoiskNOD(b, a mod b) -> PoiskNOD(a mod b, b mod (a mod b))...PoiskNOD(0, 0)
объём: 
глубина:
}

function PoiskNOD(a, b: integer): integer;
begin
  if b = 0 then
    PoiskNOD := a
  else
    PoiskNOD := PoiskNOD(b, a mod b);
end;

var
  x, y, result: integer;

begin
  writeln('x:');
  readln(x);
  writeln('y:');
  readln(y);
  
  result := PoiskNOD(x, y);
  writeln('НОД при ', x, ' ', y, ' = ', result);
end.