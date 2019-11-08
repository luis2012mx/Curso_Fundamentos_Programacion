public class Bicicleta{
    private int pinon;
    private byte rodada;
    private double velocidad;

    public boolean setPinon(int p){
        if(p>0 && p<4){
            this.pinon=p;
            return true;
        } else return false;
    }

    public boolean setRodada(byte r){
        if(r==10 || r==12 || r==15 || r==20){
            this.rodada=r;
            return true;
        } else return false;
    }

    public boolean setVelocidad(double v){
        if(v>0.0 && v<80.0){
            this.velocidad=v;
            return true;
        } else return false;
    }

    public int getPinon(){   return this.pinon;   }
    public byte getRodada(){   return this.rodada;   }
    public double getVelocidad(){   return this.velocidad; }
}
