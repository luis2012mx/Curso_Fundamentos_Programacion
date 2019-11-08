definir distancia, tiempo, velocidad como real;
definir nombre_corredor, desicion como cadena;

Funcion meta()
	Escribir "Algoritmo que sera utilizado para calcular la velocidad";
	Escribir "de un corredor conociendo la distancia recorrida y el";
	Escribir "tiempo quetardaa en ello";
FinFuncion

Funcion datos()
	Escribir "Ingrese el nombre del corredor";
	leer nombre_corredor;
	Escribir "Cuanta distancia recorrio?";
	leer distancia;
	// Validar que sea numero y positivo
	Escribir "En cuanto tiempo lo hizo?";
	leer tiempo;
	//validar que sea numero y positivo
FinFuncion

Funcion calculos()
	velocidad <- distancia/tiempo ;
FinFuncion

Funcion resultados()
	Escribir "El corredor " , nombre_corredor , " recorrio " , distancia, " m en " , tiempo , " s";
	Escribir " alcanzando una velocidad de " , velocidad , " m/s";
FinFuncion

Algoritmo velocidadCorredor	
    meta();
	Repetir		
		datos();
		calculos();
		resultados();
		
		Escribir "Desea hacer el calculo con otro corredor";
		Escribir "s/n";
		leer desicion;
	hasta que desicion = "n";
FinAlgoritmo