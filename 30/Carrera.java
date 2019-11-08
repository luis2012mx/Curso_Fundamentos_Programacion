import java.io.*;
import java.util.Scanner;

public class Carrera{
    Scanner teclado = new Scanner(System.in);
    Biblioteca b = new Biblioteca();
    Corredor c = new Corredor();
    Double velocidad;

    public void inicio(){
        System.out.println("Algoritmo que sera utilizado para calcular la");
        System.out.println("velocidad de un corredor conociendo la distancia");
        System.out.println("recorrida y el tiempo quetarda en ello.");
    }

    public void datos(){
        System.out.print("Ingrese el nombre del corredor: ");
        c.setNombre(teclado.nextLine());
        c.setDistancia(b.capDouble("Ingrese la distancia recorrida: "));
        c.setTiempo(b.capInt("Ingrese el tiempo que tardo: "));
    }

    public void calculos(){
        velocidad = c.getDistancia()/c.getTiempo();
    }

    public void resultados(){
        System.out.print("El corredor "+c.getNombre()+" recorrio ");
        System.out.println(c.getDistancia()+" m en "+c.getTiempo()+" s");
        System.out.println("Alcanzando una velocidad de "+velocidad+" m/s");
    }

    public static void main(String args[]){
        Scanner sc = new Scanner(System.in);
        char d;

        Carrera a = new Carrera();
        a.inicio();
        do{
            a.datos();
            a.calculos();
            a.resultados();
            System.out.print("Desea hacer el calculo nuevamente? (s/n): ");
            d = sc.next().toLowerCase().charAt(0);
            System.out.println("-----------------------------------");
        }while(d=='s');
    }
}
