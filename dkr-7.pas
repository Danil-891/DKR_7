uses graphabc;
procedure levy(x,y,a,r:real;k:integer); 
begin
if k>0 then 
 begin
  r:=r*sin(pi/4);
  levy(x,y,a+pi/4,r,k-1);
  levy(x+r*cos(a+pi/4),y-r*sin(a+pi/4),a-pi/4,r,k-1);
 end 
else
line(trunc(x),trunc(y),trunc(x+r*cos(a)),trunc(y-r*sin(a))); 
end; 
begin
  var c,d,e:integer;
  writeln('Введите глубину прорисовки');
  read(c);
  writeln('Введите масштаб кривой');
  read(d);
  writeln('Введите куда переместить кривую');
  read(e);
levy(e,300,0,d,c); 
end.
