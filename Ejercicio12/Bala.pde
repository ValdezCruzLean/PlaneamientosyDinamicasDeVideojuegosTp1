class Bala{
  private PVector posicion;
  private PVector velocidad;
  
  public Bala(){
  }
  
  public Bala(PVector posicion, PVector direccion){
    this.posicion=posicion;
    this.velocidad = PVector.sub(direccion, posicion).normalize().mult(10);
  }
  
  
  public void mover(){
    this.posicion.add(this.velocidad);
  }
  
 
  
  public void display(){
    stroke(255,255,0);
    //ellipse(posicion.x,posicion.y,5,5);
    ellipse(posicion.x,posicion.y,5,10);
  }
  
}
