Algoritmo velocidadCorredor
	definir distancia, tiempo, velocidad como real;
	definir nombre_corredor, desicion como cadena;
	
    // 1-. Meta
	Escribir "Algoritmo que sera utilizado para calcular la velocidad";
	Escribir "de un corredor conociendo la distancia recorrida y el";
	Escribir "tiempo quetardaa en ello";
	
	Repetir		
		// 2.- Datos
		Escribir "Ingrese el nombre del corredor";
		leer nombre_corredor;
		Escribir "Cuanta distancia recorrio?";
		leer distancia;
		// Validar que sea numero y positivo
		Escribir "En cuanto tiempo lo hizo?";
		leer tiempo;
		//validar que sea numero y positivo
		
		// 3.- Calculos
		velocidad <- distancia/tiempo;
		
		// 4.- Resultados
		Escribir "El corredor " , nombre_corredor , " recorrio " , distancia, " m en " , tiempo , " s";
		Escribir " alcanzando una velocidad de " , velocidad , " m/s";
		
		// 5.- Navegabilidad
		Escribir "Desea hacer el calculo con otro corredor";
		Escribir "s/n";
		leer desicion;
	hasta que desicion = "n";
FinAlgoritmo