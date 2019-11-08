Algoritmo Cuadratica

	// 1. Meta
	Escribir "Proponga la logica necesaria para calcular y mostrar las";
	Escribir "raices de una ecuacion cuadratica de la forma: Ax^2+Bx+C";

	// 2. Datos
	Definir A como Real;
	Definir B como Real;
	Definir C como Real;
	Definir X1 como Real;
	Definir X2 como Real;

	Escribir "Tomando en cuenta lo siguiente: Ax^2+Bx+C";
	Escribir "Ingrese el valor de A";
	Leer A;
	Escribir "Ingrese el valor de B"
	Leer B;
	Escribir "Ingrese el valor de C";
	Leer C;
	// Validar de que no existan raices complejas, si es asi, volver a pedir los datos


	// 3. Calculos

	// Aplicando formula general
	X1 <- (-B+RAIZ((b*b)-(4*A*C)))/(2*a);
	X2 <- (-B-RAIZ((b*b)-(4*A*C)))/(2*a);

	// 4. Resultados
	Escribir "Tomando en cuenta: Ax^2+Bx+C donde";
	Escribir "A = ",A;
	Escribir "B = ",B;
	Escribir "C = ",C;
	Escribir "X1 es igual a ",X1;
	Escribir "y X2 es igual a ",X2;

	// 5. Navegabilidad
	Escribir "Desea hacer el calculo con otra ecuacion?";
	Escribir "s/n";
	// Si la respuesta es 's' entonces regresar a el paso 2

FinAlgoritmo
