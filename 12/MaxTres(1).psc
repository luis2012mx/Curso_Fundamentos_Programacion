Definir n1,n2,n3 Como Real;
Definir numeroMayor, numerosIguales, D Como Caracter;

Funcion meta()
	Escribir "Algoritmo que acepta 3 cantidades, determina y muestra";
	Escribir "la mayor de las 3. Determine determine tambien la";
	Escribir "variable donde fue almacenada y por ultimo diga si las";
	Escribir "cantidades fueron iguales, cuantas y cuales";
FinFuncion

Funcion datos()
	Escribir "Dame el valor del primer numero";
	leer n1;
	Escribir "Dame le valor del segundo numero";
	Leer n2;
	Escribir "Dame el valor del tercer numero";
	Leer n3;
FinFuncion

Funcion calculos()
	//Calculadno el numero mayor
	Si n1=n2 y n1=n3 y n2=n3 Entonces
		numeroMayor <- "No hay numero mayor, los tres son iguales";
	SiNo
		Si n1>n2 y n1>n3 Entonces
			numeroMayor <- "El numero 1: "+ CONVERTIRATEXTO(n1) + " es el mayor";
		SiNo
			Si n2>n1 y n2>n3 Entonces
				numeroMayor <- "El numero 2: "+ CONVERTIRATEXTO(n2) + " es el mayor";
			SiNo
				Si n3>n1 y n3>n2 Entonces
					numeroMayor <- "El numero 3: "+ CONVERTIRATEXTO(n3) + " es el mayor";
				SiNo
					numeroMAyor <- "Hay dos numeros mayores iguales";
				FinSi
			FinSi
		FinSi
	FinSi
	
	//Calculadno igualdades
	Si n1=n2 y n1=n3 y n2=n3 Entonces
		numerosIguales <- "Los tres numeros son iguales";
	SiNo
		Si n1=n2 Entonces
			numerosIguales <- "El numero 1: "+CONVERTIRATEXTO(n1)+" es igual al numero 2: "+CONVERTIRATEXTO(n2);
		SiNo
			Si n1=n3 Entonces
				numerosIguales <- "El numero 1: "+CONVERTIRATEXTO(n1)+" es igual al numero 3: "+CONVERTIRATEXTO(n3);
			SiNo
				Si n2=n3 Entonces
					numerosIguales <- "El numero 2: "+CONVERTIRATEXTO(n2)+" es igual al numero 3: "+CONVERTIRATEXTO(n3);
				SiNo
					numerosIguales <- "No hay numeros iguales";
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

Funcion resultados()
	Escribir numeroMayor;
	Escribir numerosIguales;
FinFuncion

Algoritmo TresCantidades
	meta()
	
	Repetir
		datos()
		calculos()
		resultados()
		
		Escribir "Desea hacer nuevamente el calculo? ...";
		Escribir "s/n";
		leer D;
		Escribir "---------------------------------------";
	Hasta Que D="n" o D="N";
FinAlgoritmo
