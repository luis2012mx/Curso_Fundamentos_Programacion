#include <iostream>
#include <math.h>
#include <String.h>

using namespace std;

double r, C , S;
char aux[20];
//double atof();

int isNum (char *cad){
	for (int i=0; i < strlen (cad) ; i++)
	if(cad[i] =='.' || cad[i] =='-' || cad[i] == '\r'  || cad[i] == '\n')
		continue;
	else if (cad[i] < '0' || cad[i] > '9') {
     cout << "solo se admiten numeros";
     return 1;
    }
return 0;
}

double CapReal(char *prompt){
	 do{
		cout<< prompt;
	 fgets(aux, sizeof(aux), stdin);
	 }while (isNum(aux) !=0);
	 return atof(aux);
}

void inicio() {
	cout << "Para calccular la superficie y la circunfernecia";
	cout << " de circulos cualquiera";
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
	cout << "\n  cuando el radio vale: " << r;
	cout << "\n la superficie es " << S;
	cout << "\n la circunferencia es " << C;
}

int main() {
	int resp = 'S';

     inicio();
     while (resp == 'S' ||resp == 's') {
	 datos();
     calculos();
	 resultados();
	 cout << "\nCalcular otro circulo? s/n:";
	 resp = getchar();
	 getchar();
	}
}
