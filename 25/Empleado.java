public class Empleado{
    private String nombre;
    private double sueldo;
    private int horExtra;
    private int ausencias;

    public void setNombre(String n){
        this.nombre = n;
    }

    public boolean setSueldo(double s){
        if(s>0){
            this.sueldo = s;
            return true;
        } else return false;
    }

    public boolean setHorExtra(int h){
        if(h>=0){
            this.horExtra = h;
            return true;
        } else return false;
    }
    
    public boolean setAusencias(int a){
        if(a>=0){
            this.ausencias = a;
            return true;
        } else return false;
    }

    public String getNombre(){   return nombre;  }
    public double getSueldo(){   return sueldo;  }
    public int  getHorExtra(){   return horExtra;  }
    public int getAusencias(){   return ausencias;  }
}
