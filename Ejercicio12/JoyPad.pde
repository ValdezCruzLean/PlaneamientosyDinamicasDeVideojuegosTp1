class JoyPad{
private boolean presionoDerecha;
private boolean presionoIzquierda;
private boolean presionoArriba;
private boolean presionoAbajo;

public boolean isDerechaPresionado(){
return this.presionoDerecha;
}
public void setPresionoDerecha(boolean presionoDerecha){
this.presionoDerecha=presionoDerecha;
}

public boolean isIzquierdaPresionado(){
return this.presionoIzquierda;
}
public void setPresionoIzquierda(boolean presionoIzquierda){
this.presionoIzquierda=presionoIzquierda;
}

public boolean isArribaPresionado(){
return this.presionoArriba;
}
public void setPresionoArriba(boolean presionoArriba){
this.presionoArriba=presionoArriba;
}

public boolean isAbajoPresionado(){
return this.presionoAbajo;
}
public void setPresionoAbajo(boolean presionoAbajo){
this.presionoAbajo=presionoAbajo;
}
}
