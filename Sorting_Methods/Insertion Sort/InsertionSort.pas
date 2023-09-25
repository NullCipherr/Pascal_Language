Program Pzim ;

type
  ArrayInteger = array[0..10] of integer;

var i : Integer ; // Contador
var v : ArrayInteger ; 



Procedure InsertionSort(tam : Integer) ;
	
	var i, j, aux : Integer ; // VARIAVEIS LOCAIS .

Begin
	
	Writeln('') ;
	//Writeln('CHEGOU AKI!!') ;
	
	for i := 1 to tam do
  	Begin
  		Writeln('começou o for!!') ;
   		aux := v[i];
   		j := i - 1 ;
   		Writeln(j);
   		
			While ((j >= 0) and (v[j] > aux)) do
    		Begin
     			v[j+1] := v[j];
     			j := j - 1;
    		End;
   		v[j+1] := aux;
   		
		End;
End;

Begin

	
	for i:=1 to 10 do
		begin
			
			Write('V[', i ,']: ') ;
			Read(v[i]) ;
			clrscr ; 
		
		end;
		
	clrscr ; // Limpa a Tela
	
	Writeln('Vetor Orginal ...') ; // Escreve o Vetor não Ordenado na Tela !!
	for i:=1 to 10 do
		begin
		
			Write(v[i], ' ') ;
		
		end;
	
	InsertionSort(10) ;
	
	Writeln(' ') ;
	Writeln(' ') ;
	
	Writeln('Vetor Ordenado ...') ;
	for i:=1 to 10 do
		begin
		
			Write(v[i], ' ') ;
		
		end; 
		
	
  
End.