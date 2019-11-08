public class Nave {
    private int hora;
    private int min;
    private int seg;
    private int tiempo;

    //Setters
    public boolean setHora(int hora){
        if(hora<24 && hora>=0){
            this.hora=hora;
            return true;
        } else return false;
    }

    public boolean setMin(int min){
        if(min<60 && min>=0){
            this.min=min;
            return true;
        } else return false;
    }

    public boolean setSeg(int seg){
        if(seg<60 && seg>=0){
            this.seg=seg;
            return true;
        } else return false;
    }

    public boolean setTiempo(int tiempo){
        if(tiempo>=600){
            this.tiempo=tiempo;
            return true;
        } else return false;
    }

    //Getters
    public int getHora(){   return hora;   }
    public int getMin(){   return min;   }
    public int getSeg(){    return seg;   }
    public int getTiempo(){    return tiempo;   }
}
