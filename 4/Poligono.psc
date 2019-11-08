Algoritmo Poligono

	Definir L,P,S Como Real;
	Definir N Como Entero;
	Definir D Como Caracter;

	// 1. Meta
	Escribir "Para calcular La superficie y el perimetro de un poligono";
	Escribir "regular de 5 a 10 lados sabiendo el numero de lados y el";
	Escribir "tamaño de cada lado proponga un algoritmo con enfoque de sistemas.";

	Repetir
		// 2. Datos
		Escribir "Dame el numero de lados";
		Leer N;
		// Validar que sea entre 5 y 6 lados

		Escribir "Dame la medida del lado"
		leer L;
		// Validar que sea mayor a 0

		// 3. Calculos
		P <- N*L;
		S <- (P*L)/(4*tan(pi/(2*N)));

		// 4. Resultados
		Escribir "Con un poligono de ", N, " lados de ", L, " unidades por lado.";
		Escribir "El perimetro vale: ",P;
		Escribir "La superficie vale: ", S;

		// 5. Navegabilidad
		Escribir "Desea calcular otro circulo?"
		Escribir "s/n";
		Leer D;
		Escribir "---------------------------------------------------------";
	Hasta Que D="n";

FinAlgoritmo
