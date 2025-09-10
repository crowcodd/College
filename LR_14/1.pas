{
a(25) -> a(23) -> a(21) -> a(19)...-> a(-1)
глубина:13
объём:12
}

procedure a(n: Integer);
begin
  if n >= 0 then
  begin
    Write(n, ' ');
    a(n - 2);
  end;
end;

begin
  a(25);
end.