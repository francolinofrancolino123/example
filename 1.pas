program ioqc;
type columnas = array[1..10] of integer;
var matriz : array [1..10] of columnas;
i, j, n, m, k, h, p : integer;

begin

{ el objetivo de este programa es calcular la transpuesta de una matriz de nxm }

writeln('Las entradas de la matriz deben ser positivas!');
repeat
write('Introduzca la cantidad de filas = ');
readln(n);
until (n < 11) and (n > 0);

repeat
write('Introduzca la cantidad de columnas = ');
readln(m);
until (m < 11) and (m > 0);

{ h:=máx(n,m) }
if n > m then h:=n
else h:=m;

writeln('Las dimensiones de la matriz seran ',n,' x ',m,'.');
writeln;
writeln('Introduzca las entradas de la matriz:');

{ transformamos la matriz en la nula, para luego rellenar }
for i:=1 to h do
begin
	for j:=1 to h do
	begin
		matriz[i,j]:=0;
	end;
end;

{ relleno la matriz con los datos que obtuve }
for i:=1 to n do
begin
	for j:=1 to m do
	begin
		write('a[',i,j,'] = ');
		read(matriz[i,j]);
	end;
end;


writeln;
writeln('La matriz que usted introdujo es:');

{ le muestro la matriz que introdujo }
for i:=1 to n do
begin
	for j:=1 to m do
	begin
		if matriz[i,j] <> 0 then
		begin
			if (matriz[i,j] < 10) then write(' ',matriz[i,j],' ') else write(matriz[i,j],' ');
		end;
	end;
	writeln;
end;

writeln;
writeln('La matriz transpuesta a la que usted introdujo es:');

{ transpongo los valores }
p:=1;
while (p <= h) do
begin
	for i:=1 to h do
	begin
		for j:=i to h do
		begin
			k:=matriz[j,p];
			matriz[j,p]:=matriz[p,j];
			matriz[p,j]:=k;
		end;
		p:=p+1;
	end;
end;

(* las imprimo *)
for i:=1 to m do
begin
	for j:=1 to n do
	begin
		if matriz[i,j] <> 0 then
		begin
			if (matriz[i,j] < 10) then write(' ',matriz[i,j],' ') else write(matriz[i,j],' ');
		end;
	end;
	writeln;
end;


end.