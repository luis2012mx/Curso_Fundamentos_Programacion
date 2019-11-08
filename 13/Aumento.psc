Algoritmo Aumento
	Definir nombre,d como cadena;
	Definir s_anterior, s_nuevo, porcentaje, nominaAnt, nominaAum Como Real;

	// 1.- Meta
	Escribir "Favor de modelar un algoritmo con enfoqu de sistemas que";
	Escribir "permita calcular y mostrar el aumento a los empleados de";
	Escribir "una empresa ";

	Hacer
		// 2.- Datos
		Escribir "Deme el nombre del empleado";
		leer nombre;
		Escribir "Cuanto es su sueldo actual";
		leer s_anterior;
		// Validar que sea numero y mayor a cero

		// 3.- Calculos
		Si s_anterior <=2000 Entonces
			porcentaje <- 0.3;
		FinSi
		Si s_anterior >2000 Entonces
			porcentaje <- 0.25;
		FinSi
		Si s_anterior >4000 Entonces
			porcentaje <- 0.1;
		FinSi
		Si s_anterior >10000 Entonces
			porcentaje <- 0.05;
		FinSi
		nominaAnt <- nominaAnt+s_anterior;
		s_nuevo <- s_anterior+(s_anterior*porcentaje);
		nominaAum <- nominaAum+s_nuevo;
		
		// 4.- Resultados
		Escribir "El empleado "+nombre+" tiene un sueldo de "+CONVERTIRATEXTO(s_anterior);
		Escribir "Y se le aplico un aumento del "+ConvertirATexto(porcentaje*100)+"%";
		Escribir "Aumentando a su sueldo la cantidad de "+ConvertirATexto(s_anterior*porcentaje);
		Escribir "Dejando un sueldo final de "+ConvertirATexto(s_nuevo);

		// 5.- Navegabilidad
		Escribir "Desea hacer e calculo con otro empleado s/n"
		leer d;
	Hasta Que d ="n";
	Escribir "La nomina sin aumentos era de: "+ConvertirATexto(nominaAnt);
	Escribir "La nomina con aumentos es de: "+ConvertirATexto(nominaAum);
FinAlgoritmo
