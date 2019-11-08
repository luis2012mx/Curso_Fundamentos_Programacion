Definir dia, hora, minuto, seg, tiempo como entero;
Definir tiempoInicio, D como caracter;

Funcion meta()
	Escribir "Se requiere un algoritmo que ";
	Escribir "permita leer 3 valores enteros representando,";
	Escribir "el tiempo de despegue de un transbordador";
	Escribir "espacial (cohete), expresado en horas, minutos";
	Escribir "y segundos utilizando un relog de 24 horas.";
	Escribir "Tambien acepte un valor entero significando el";
	Escribir "tiempo de vuelo en segundos. Calcule y muestre";
	Escribir "los dias, horas, minutos y segundos en que el";
	Escribir "cohete regresaraa la tierra.";
FinFuncion

Funcion datos()
	Escribir "Ingrese el tiempo actual...";
	Escribir "Hora: ";
	leer hora;
	// Validar: 24> hora >=0
	Escribir "Minuto: ";
	leer minuto;
	// Validar: 60> minuto >=0
	Escribir "Segundo";
	leer seg;
	//Validar: 60> segundo >=0
	Escribir "Ingrese el tiempo de vuelo que tarda el cohete (segundos)";
	Leer tiempo;
	// Validar: tiempo>600 s
FinFuncion

Funcion calculos()
	tiempoInicio <- "El cohete salio a la hora: "+hora+":"+minuto+":"+seg;
	seg <- seg+tiempo;
	
	Mientras seg>=60 Hacer
		minuto <- minuto+1;
		seg <- seg-60;
	Fin Mientras
	
	Mientras minuto>=60 Hacer
		hora <- hora+1;
		minuto <- minuto-60;
	Fin Mientras
	
	Mientras hora>=24 Hacer
		dia <- dia+1;
		hora <- hora-24;
	Fin Mientras
FinFuncion

Funcion resultados()
	Escribir tiempoInicio;
	Escribir "El cohete regresara a la hora: "+hora+":"+minuto+":"+seg;
	Si dia>0 Entonces
		Escribir "Despues de "+dia+" dia(s)";
	SiNo
		Escribir "Del mismo dia";
	FinSi
FinFuncion

Algoritmo Cohete
	meta()
	
	Repetir
		datos()
		calculos()
		resultados()
		
		Escribir "Desea hacer otro calculo?";
		Escribir "s/n";
		leer D;
		Escribir "-------------------------------------------";
	Hasta Que D=="n"
FinAlgoritmo
