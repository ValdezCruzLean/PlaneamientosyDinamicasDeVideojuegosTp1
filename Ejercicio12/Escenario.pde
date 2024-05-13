class Escenario{
  private PImage imagen;


  public Escenario(){
  this.imagen = loadImage("arena.png");
  this.imagen.resize(width,height);

  }

  public void display(){
  imageMode(CORNER);
  image(this.imagen,0,0);

  }
}
