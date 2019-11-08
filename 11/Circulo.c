#include <stdio.h>
#include <math.h>
#include <String.h>

double r, C , S;
char aux[20];
double atof();

int isNum (char *cad){
	for (int i=0; i < strlen (cad) ; i++)
	if(cad[i] =='.' || cad[i] =='-' || cad[i] == '\r'  || cad[i] == '\n')
		continue;
	else if (cad[i] < '0' || cad[i] > '9') {
     printf ("solo se admiten numeros %c\n", cad[i]);
     return 1;
    }
return 0;

}

double CapReal(char *prompt){
	 do{
		printf(prompt);
	 fgets(aux, sizeof(aux), stdin);
	 }while (isNum(aux) !=0);
	 return atof(aux);

}

void inicio() {
	printf("Para calccular la superficie y la circunfernecia");
	printf(" de circulos cualquiera");
}

void datos() {
	float rad;

	do rad = CapReal ("\nDe valor del radio:");
	while (rad < 0);
	r = rad;
}

void calculos() {
	S = M_PI * r * r;
	C = 2 * M_PI * r;
}

void resultados() {
	printf("cuando el radio vale: %f\n", r);
	printf("la superficie es %f\n", S);
	printf("la circunferencia es %f\n", C);
}

int main() {
	int resp = 'S';

     inicio();
     while (resp == 'S' ||resp == 's') {
	 datos();
     calculos();
	 resultados();
	 printf("\nCalcular otro circulo? s/n:");
	 resp = getchar();
	 getchar();
	}
}
