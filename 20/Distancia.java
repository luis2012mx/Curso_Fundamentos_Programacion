import java.io.*;
import java.util.Scanner;

public class Distancia{
    Point uno = new Point();
    Point dos = new Point();
    double d;
    Scanner teclado = new Scanner(System.in);

    // Meter metodos is num y capDouble
    boolean isNum(String cad){
        try {
            Double.parseDouble(cad);
            return true;
        } catch (NumberFormatException nfe) {
            System.out.println("Solo acepto numeros");
            return false;
        }
    }

    double capDouble(String mensaje){
        String cadena;
        do{
            System.out.print(mensaje);
            cadena = teclado.nextLine();
        } while( !isNum(cadena) );
        return Double.parseDouble(cadena);
    }

    public void inicio(){
        System.out.println("Calcule la disstancia entre dos puntos");
        System.out.println("del plano y la despliega");
    }

    public void datos(){
        uno.setX(capDouble("Ingrese el calor x del primer numero: "));
        uno.setY(capDouble("Ingrese el calor y del primer numero: "));
        dos.setX(capDouble("Ingrese el calor x del segundo numero: "));
        dos.setY(capDouble("Ingrese el calor y del segundo numero: "));
    }

    public void calculos(){
        d=Math.sqrt(Math.pow(dos.getX()-uno.getX(),2)+Math.pow(dos.getY()-uno.getY(),2));
    }

    public void resultados(){
        System.out.println("La distancia entre el primer punto ");
        System.out.println("P1: ("+uno.getX()+","+uno.getY()+")");
        System.out.println("Y el segundo punto");
        System.out.println("P2: ("+dos.getX()+","+dos.getY()+")");
        System.out.println("La distancia entre p1 y p2 es : " + d);
    }

    public static void main(String args[]){
        Distancia d = new Distancia();
        Scanner sc = new Scanner(System.in);
        char r;

        d.inicio();
        do {
            d.datos();
            d.calculos();
            d.resultados();
            System.out.print("Desea hacer el calculo nuevamente? (s/n) ");
            r = sc.next().toLowerCase().charAt(0);
            System.out.println("-------------------------------------------");
        } while(r=='s');
    }
}
