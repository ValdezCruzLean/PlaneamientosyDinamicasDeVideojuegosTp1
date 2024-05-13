class Pelota{

private PVector posicion;
private PVector velocidad;

  public Pelota(PVector posicion,PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;

  }
  public void display(){
    fill(255,0,0);
    ellipse(this.posicion.x,this.posicion.x,50,50);
}

public void mover(){
   posicion.add(velocidad);
}


public void setPosicion(PVector posicion){
this.posicion= posicion;
}
public PVector getPosicion(){
return this.posicion;
}
public void setVelocidad(PVector velocidad){
this.velocidad= velocidad;
}
public PVector getVelocidad(){
return this.velocidad;
}
}
