{
fib(0, 1, 3) -> fib(1, 1, 4) -> fib(1, 2, 5)...fib(21, 34, 11)
глубина:9
объём:8
}

procedure fib(i,n,cnt: integer);
  begin
       writeln (i+n,' ');
       if cnt <= 10 then
           fib(n, i+n, cnt + 1)
  end;
begin
  fib(0,1,3);
end.