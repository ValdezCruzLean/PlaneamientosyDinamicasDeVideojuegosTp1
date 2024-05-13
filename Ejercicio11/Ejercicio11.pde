  private Vector vectorBrowser;
  private Vector vectorMarioBrowser;
  private Vector  vectorMario;
  private PVector posicionBrowser;
  private PImage imagenBrowser;
  private PImage imagenMario;
  private Escenario miEscenario;
  private Fuego fuego;
  private PVector posicionFuego;

  public void setup(){
    size(500,500);
    vectorBrowser = new Vector(new PVector(0,0), new PVector(10,0));
    vectorMario = new Vector(new PVector(0,0),new PVector(0,40));
    vectorMarioBrowser= new Vector();
    miEscenario= new Escenario();
    posicionFuego = new PVector(width/2,height/2);

  }

  public void draw(){
    background(255);
    miEscenario.display();
    dibujarMario();
    dibujarBrowser();
    posicionBrowser= new PVector(width/2,height/2);
    vectorMario.setOrigen(new PVector(mouseX,mouseY));
    vectorBrowser.setOrigen(posicionBrowser);
    vectorBrowser.getDestino().normalize();
    vectorBrowser.display();
    dibujarVectorMarioeBrowser();
    escribirMensaje();
     if (fuego != null) {
      fuego.mover();
  
    }
  }


  public void dibujarVectorMarioeBrowser(){
    vectorMarioBrowser.setOrigen(posicionBrowser);
    vectorMarioBrowser.setDestino(PVector.sub(vectorMario.getOrigen(),posicionBrowser).normalize());
    vectorMarioBrowser.display();
  }

  public void dibujarMario(){
    strokeWeight(10);
    point(vectorMario.getOrigen().x,vectorMario.getOrigen().y);
    imagenMario = loadImage("mario.png"); 
    imagenMario.resize(60, 60);
    image(imagenMario, this.vectorMario.getOrigen().x -30, this.vectorMario.getOrigen().y -30);
    }

   public void dibujarBrowser(){
    imageMode(CENTER);
    imagenBrowser = loadImage("browser.png"); 
    imagenBrowser.resize(100, 100);
    image(imagenBrowser,  vectorBrowser.getOrigen().x-10,  vectorBrowser.getOrigen().y);
  }
  public void escribirMensaje(){
    float dotProduct = vectorBrowser.obtenerProductoPunto(vectorMarioBrowser);
    //println(dotProduct);
    textSize(20);
    text(dotProduct,180,130);
    if(dotProduct > 0.866  ){
        fill(255,0,0);
    text(" Mario fue detectado ",125,100);
  fuego = new Fuego(posicionFuego,new PVector(10,0));
   
  }else{         
             fill(255,255,255);
    text(" Mario no fue detectado ",125,100);

  }

}
