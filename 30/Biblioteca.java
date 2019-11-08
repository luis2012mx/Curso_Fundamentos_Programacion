import java.util.Scanner;

public class Biblioteca{
    Scanner teclado1=new Scanner(System.in);
    boolean isDouble(String cad){
        try {
            Double.parseDouble(cad);
            return true;
        } catch (NumberFormatException nfe) {
            System.out.println("Solo acepto numeros reales");
            return false;
        } 
    }

    boolean isNum(String cad){
        try {
            Integer.parseInt(cad);
            return true;
        } catch (NumberFormatException nfe) {
            System.out.println("Solo acepto numeros enteros");
            return false;
        }
    }

    int capInt(String mensaje){
        String cadena;
        do{
            System.out.print(mensaje);
            cadena = teclado1.nextLine();
        } while( !isNum(cadena) );
        return Integer.parseInt(cadena);
    }


    double capDouble(String mensaje){
        String cadena;
        do{
            System.out.print(mensaje);
            cadena = teclado1.nextLine();
        } while( !isDouble(cadena) );
        return Double.parseDouble(cadena);
    }

    public boolean isString(Object str) {
    if (str.equals(str.toString())) {
        return true;
    } else {
        System.out.println("No es una respuesta valida");
        return false;
    }
}

}
