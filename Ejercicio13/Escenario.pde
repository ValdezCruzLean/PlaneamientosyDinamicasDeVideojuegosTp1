class Escenario{
  private PImage image;


  public Escenario(){
    this.image = loadImage("CanchaEscenario2.PNG");
    this.image.resize(width,height);

}

  public void display(){
    imageMode(CORNER);
    image(this.image,0,0);

}
}
