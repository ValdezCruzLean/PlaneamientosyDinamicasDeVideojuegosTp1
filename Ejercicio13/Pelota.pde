class Pelota{

private PVector posicion;
private PVector velocidad;
private PImage imagen;

  public Pelota(PVector posicion,PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.imagen=loadImage("Pelota.png");

  }
  public void display(){
  imagen.resize(60,60);
   image(imagen,posicion.x,posicion.y);
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
