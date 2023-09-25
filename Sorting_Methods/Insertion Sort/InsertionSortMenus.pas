Program InsertionSortWithMenu ;

type
  ArrayInteger = array[0..20] of integer;

const TamVetor = 20 ; // Tamanho do Vetor

var 
	v : ArrayInteger ; // Vetor.
 	i : Integer ; // Contador .
	Options : Integer ; // Opção do Menu
	resp : char ; // Char do Repeat


procedure AdicionarValores();  // Procedure de Imprimir .

	var i : Integer ; //CONTADOR

begin
	
	for i:=1 to TamVetor do
		begin
			Write('V[', i ,']: ') ;
			Read(v[i]) ;
			clrscr ; 
		end;;

End;

Procedure InsertionSort() ; // Procedure de Ordenar .
	
	var i, j, aux : Integer ; // VARIAVEIS LOCAIS .

Begin
	
	for i := 1 to TamVetor do
  	Begin
   		aux := v[i];
   		j := i - 1 ;
			While ((j >= 0) and (v[j] > aux)) do
    		Begin
     			v[j+1] := v[j];
     			j := j - 1;
    		End;
   		v[j+1] := aux;
   		
		End;
End;

procedure ImprimirVetor();  // Procedure de Imprimir .

	var i : Integer ;

begin
	
	Writeln(' ') ; // PULA A LINHA
	for i:=1 to TamVetor do
		begin
			Write(v[i], ' ') ;
		end;
	Writeln(' ') ; // PULA A LINHA
	Writeln(' ') ; // PULA A LINHA

End; 
			
Begin
		 
		 repeat      
    			writeln('                              ========== Menu principal ==========');
    			writeln('                              |  1 - Adicionar Valores           |');
    			writeln('                              |  2 - Ordenar                      |');
    			writeln('                              |  3 - SAIR                        |');
    			writeln('                              ====================================');

          Write('Option: ') ;
					read(Options) ;
          
          clrscr ;  //LIMPA A TELA !!
          
					
					case (options) of        
          	1 :	begin        	
          				AdicionarValores() ;
          			end;	
						2:	begin
									InsertionSort() ; // Utiliza o Método de Ordenação Insertion Sort.
									Writeln('---------Vetor Ordenado---------') ;
									ImprimirVetor() ;
									Writeln('--------------------------------') ;
								end;

            3:	exit() ; // SAI DO PROGRAMA 
      		end;        
     	until (resp = 'n') ;
End.



	
	
	
	
	
	
	
	