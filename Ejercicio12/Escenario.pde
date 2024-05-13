class Escenario{
private PImage imagen;
//private int numEscenario;

public Escenario(){
this.imagen = loadImage("arena.png");
this.imagen.resize(width,height);
//numEscenario = 1;
}

public void display(){
imageMode(CORNER);
image(this.imagen,0,0);

}
}
