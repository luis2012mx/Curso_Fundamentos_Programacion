Definir L,P,S Como Real;
Definir N Como Entero;
Definir D Como Caracter;

Funcion meta()
	Escribir "Para calcular La superficie y el perimetro de un poligono";
	Escribir "regular de 5 a 10 lados sabiendo el numero de lados y el";
	Escribir "tamaño de cada lado proponga un algoritmo con enfoque de sistemas.";
FinFuncion

Funcion datos()
	Escribir "Dame el numero de lados";
	Leer N;
	// Validar que sea entre 5 y 6 lados
	Escribir "Dame la medida del lado"
	leer L;
	// Validar que sea mayor a 0
FinFuncion

Funcion calculos()
	P <- N*L;
	S <- (P*L)/(4*tan(pi/(2*N)));
FinFuncion

Funcion resultados()
	Escribir "Con un poligono de ", N, " lados de ", L, " unidades por lado.";
	Escribir "El perimetro vale: ",P;
	Escribir "La superficie vale: ", S;
FinFuncion

Algoritmo Poligono	
	meta()
	Repetir
		datos()
		calculos()
		resultados()
		
		Escribir "Desea calcular otro circulo?"
		Escribir "s/n";
		Leer D;
		Escribir "---------------------------------------------------------";
	Hasta Que D="n";
FinAlgoritmo
