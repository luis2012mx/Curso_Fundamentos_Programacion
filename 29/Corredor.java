public class Corredor{
    private String nombre;
    private double distancia;
    private int tiempo;

    public void setNombre(String n){   this.nombre = n;   }

    public boolean setDistancia(double d){
        if(d>0){
            this.distancia=d;
            return true;
        } else return false;
    }

    public boolean setTiempo(int t){
        if(t>0){
            this.tiempo=t;
            return true;
        } else return false;
    }

    public String getNombre(){   return nombre;   }
    public double getDistancia(){   return distancia;   }
    public int getTiempo(){   return tiempo;   }

}
