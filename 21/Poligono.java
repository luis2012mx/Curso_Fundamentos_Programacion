public class Poligono{
    private int numLados;
    private double lado;
    private double radio;

    public boolean setNumLados(int n){
        if(n>=5 && n<=10){
            this.numLados=n;
            return true;
        } else return false;
    }

    public boolean setLado(double lad){
        if(lad>0){
            this.lado=lad;
            return true;
        } else return false;
    }
    
    public boolean setRadio(double r){
        if(r>0){
            this.radio=r;
            return true;
        } else return false;
    }

    public int getNumLados(){   return this.numLados;   }
    public double getLado(){   return this.lado;   }
    public double getRadio(){   return this.radio;   }
}
