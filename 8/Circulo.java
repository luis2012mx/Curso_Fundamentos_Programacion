import java.io.*;
import java.util.Scanner;

public class Circulo {
    Scanner tecla = new Scanner(System.in);
    double r, c, s;

    void inicio(){
        System.out.println("Programa para calcular y\nmostrar el perimetro y la\nsuperficie circulos cualesquiera\n");
    }

    boolean esNumero(String cad){
        try {
            Double.parseDouble(cad);
            return true;
        } catch (NumberFormatException nfe) {
            System.out.print("\nNo puedo procesar el dato introducido\nPor favor ingrese un numero ... ");
        return false;
        }
    }

    void datos(){
        String aux = " ";

        do {
            do{
                System.out.print("\nIntrodusca el valor del radio ... ");
                aux = tecla.nextLine();
            } while( !esNumero(aux) );
            r = Double.parseDouble(aux);
        } while(r<0);
    }

    void calculos(){
        c = Math.PI * 2 * r;
        s = Math.PI * Math.pow(r,2);
    }

    void resultados(){
        System.out.print("\nCuando el valor del radio es:"+r+"\nLa superficie es igual a "+s+"\nY la circunferencia es "+c);
    }

public static void main(String args[]) throws IOException {
    int resp = 's';
    Circulo C = new Circulo();

    C.inicio();
    while(resp == 'S' || resp == 's'){
        C.datos();
        C.calculos();
        C.resultados();
        System.out.print("\nDesea calcular otro circulo?\nS/N ... ");
        resp = System.in.read();
        System.in.skip(2);
    }
}
}
