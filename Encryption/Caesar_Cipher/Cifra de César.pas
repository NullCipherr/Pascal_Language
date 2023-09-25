uses crt;

var Texto: string ;
var Deslocamento: integer ;
var Option : char ;

function Criptografia(Entrada: string; Deslocamento: integer): string;

	var i: integer ; // CONTADOR
begin
  for i:=1 to length(Entrada) do
		
		if((Entrada[i]>= 'a') and (Entrada[i] <= 'z')) then
		begin
			Entrada[i] := chr(ord(Entrada[i]) + Deslocamento) ;
		end	
		else if((Entrada[i] >= 'A') and (Entrada[i] <= 'Z')) then  // CONDIÇÕES DE BORDA, [65,90] DA TABELA ASCII .
		begin			
			Entrada[i] := chr(ord(Entrada[i]) + Deslocamento);
  	end;
	Criptografia := Entrada;
end;

function Descriptografia(Entrada: string; Deslocamento: integer): string;
	var i: integer; // CONTADOR
begin
	for i:=1 to length(Entrada) do
		
		if((Entrada[i]>= 'a') and (Entrada[i] <= 'z')) then
		begin
			Entrada[i] := chr(ord(Entrada[i]) - Deslocamento) ;
		end	
		else if((Entrada[i] >= 'A') and (Entrada[i] <= 'Z'))then  // CONDIÇÕES DE BORDA, [65,90] DA TABELA ASCII .
			begin
				Entrada[i] := chr(ord(Entrada[i]) - Deslocamento);
			end;
  Descriptografia := Entrada;
end;


begin
  
	textcolor(13);
	writeln('Digite A Sua Carta de Amor: ');
  writeln;
	textcolor(14); 
	readln(Texto);
	
  
	clrscr; // LIMPA A TELA
  
	Write('Digite o Deslocamento(1 Á 26): ');
  Read(Deslocamento);
  
  clrscr; // LIMPA A TELA
  
  Write('Você Deseja Criptografar ou Descriptografar a sua cartinha de Amor ?? (C/D):  ') ;
	Read(option) ;
	
	clrscr; // LIMPA A TELA
  
  IF ((Option = 'C') or (Option = 'c')) then
		begin
			Texto:= Criptografia(Texto, Deslocamento) ;
			Writeln ('Mensagem Criptografada com Sucesso !! ');
			Writeln ('Deslocamento -> ', Deslocamento );
			writeln;
			textcolor(13 );
			Writeln(Texto) ;
	end;
  
	IF ((Option = 'D') or (Option = 'd' )) then
  	begin
			Texto:= Descriptografia(Texto , Deslocamento) ;
  		Writeln ('Mensagem Descriptografada com Sucesso !! ');
  		Writeln ('Deslocamento -> ', Deslocamento );
  		
			writeln;
			textcolor(13 );
			Writeln(Texto) ;
  	end;
  
	writeln;
  
  textcolor(14);
	write('Pressione [ENTER] para SAIR');
  readln;
end.
