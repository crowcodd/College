{
LoopFor(1, 10) -> LoopFor(2, 10)...LoopFor(11, 10) - база
объём: 11
глубина: 10
}

procedure LoopFor(i, n: integer);
begin
  if i <= n then
  begin
    writeln('Привет ', i);
    LoopFor(i + 1, n);
  end;
end;
begin
  LoopFor(1, 10);
end.