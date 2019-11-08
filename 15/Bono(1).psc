Definir nombre como cadena;
Definir x, bon, sueldo, sueldoF, ausencias como reales;
Definir horas, b1, b2, b3, b4, b5 como enteros;
	
Funcion meta()
	Escribir "Elabore un algoritmo para calcular y mostrar un bono";
	Escribir "navideno para los empleados de una empresa con la";
	Escribir "formula: x=horas extras-2/3 ausencias favor de totalizar";
	Escribir "los bonos por catgoria y decir cuanto se pagara por";
	Escribir "estaprestacion."
FinFuncion
	
Funcion datos()
	Escribir "Deme el nombre del empleado";
	leer nombre;
	Escribir "Cuantas horas extras realizo?";
	leer horas;
	// Validar solo positivos y numoro
	Escribir "Cuantas ausencias tuvo?";
	leer ausencias;
	// Validar solo positivos y numero
FinFuncion

Funcion calculos()
	x <- horas-((2/3)*ausencias);
	Si x>=20 Entonces
		bon <- 500;
		b5 <- b5+1;
	SiNo
		Si x>=15 y x<20 Entonces
			bon <- 400;
			b4 <- b4+1;
		SiNo
			Si x>=10 y x<15 Entonces
				bon <- 300;
				b3 <- b3+1;
			SiNo
				Si x>=0 y x<10 Entonces
					bon <- 200;
					b2 <- b2+1;
				SiNo
					bon <- 100;
					b1 <- b1+1;
				FinSi
			FinSi
		FinSi
	FinSi
	SueldoF <- sueldo + bon;
	bonT <- bonT+bon;
	nomina <- nomina+sueldoF;
FinFuncion

Funcion resultados()
	Escribir "El empleado "+nombre;
	Escribir "Adquirio un bono de "+ConvertirATexto(bon);
FinFuncion
	
Algoritmo Bono
	meta()
	
	Hacer
		datos()
		calculos()
		resultados()
		
		Escribir "Desea hacerlo nuevamente?";
		leer d;
	Hasta Que d="n";
	
	Escribir "EL total de bonos de 500 es: "+ConvertirATexto(b5);
	Escribir "EL total de bonos de 400 es: "+ConvertirATexto(b4);
	Escribir "EL total de bonos de 300 es: "+ConvertirATexto(b3);
	Escribir "EL total de bonos de 200 es: "+ConvertirATexto(b2);
	Escribir "EL total de bonos de 100 es: "+ConvertirATexto(b1);
FinAlgoritmo
