class Escenario{
  private PImage image;


  public Escenario(){
    this.image = loadImage("escenarioF.PNG");
    this.image.resize(width,height);

  }

  public void display(){
    imageMode(CORNER);
    image(this.image,0,0);

  }
}
