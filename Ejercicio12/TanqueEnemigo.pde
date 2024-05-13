class TanqueEnemigo{

  private PImage imagen;
  private PVector posicion;
  private PVector velocidad;
  
  
  public TanqueEnemigo (PVector posicion){
  this.posicion= posicion;
  this.imagen= loadImage("TankEnemy.png");
  this.velocidad = new PVector(5,0);
  
  }
  
  public void display(){
  imageMode(CENTER);
  image(this.imagen,this.posicion.x,this.posicion.y,imagen.width * 0.15,imagen.height * 0.15);
  mover();
  
  }
  
  public void mover(){
  this.posicion.x = this.posicion.x + velocidad.x;
  if(this.posicion.x >= width -30 ||this.posicion.x <= 30 ){
  velocidad.x= -velocidad.x;
  }
  }
  
  public void setPosicion(PVector posicion){
  this.posicion= posicion;
  }
  
  public PVector getPosicion(){
  return this.posicion;
  }
}
