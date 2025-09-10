var x: real = 1;
var y: real = 3;
var t: boolean = true;
var z: boolean = false;

{
       1   4     3    5      2
    (x>=0) or t and z or (y*y<>4)
    Первое действие - (x>=0)
    Второе действие - (y*y<>4)
    Третье действие - .. t and z ..
    Четвёртое - .. or t ..
    Пятое - .. z or ..
}

{ Proof Of Concept }

begin
    { Ожидаем: True }
    writeln((x>=0) or t and z or (y*y<>4))
end.