Algoritmo Temperaturas
	Definir T Como Real;
	Definir res Como Real;
	Definir D Como Entero;
	Definir D1 Como Caracter;


	// 1. Meta
	Escribir "Favor de modelar un algortmo Capaz de convertir";
	Escribir "temperaturas de grados farenheit a grados celcius";
	Escribir "y viceversa";

	Repetir
		// 2. Datos
		D = solicitarOperacion;
		Si D=1 Entonces
			Escribir "Deme la temperatura en Farenheit";
			Leer T;
		SiNo
			Escribir "Deme la temperatura en Celcius";
			Leer T;
		FinSi

		// 3. Calculos
		Si D = 1 Entonces
			res <- (T-32)*5/9;
		SiNo
			res <- (T*9/5)+32;
		FinSi

		// 4. Resultados
		Escribir "Tu temperatura inicial fue de: ", T, " grados";
		Escribir "Al convertirse di como resultado: ",res, " grados";

		// 5. Navegabilidad
		Escribir "Desea hacer otra conversion: ";
		Escribir "s/n";
		Leer D1
		Escribir "-------------------------------------------";
	Hasta Que D1="n";

FinAlgoritmo

Funcion D <- solicitarOperacion
	Repetir
		Escribir "Seleccione el tipo de conversion a realizar:";
		Escribir "   1 ---- > Farenheit a Celsius";
		Escribir "   2 ---- > Celcius a Farenheit";
		Leer D;
	Hasta Que D=1 o D=2;
FinFuncion
