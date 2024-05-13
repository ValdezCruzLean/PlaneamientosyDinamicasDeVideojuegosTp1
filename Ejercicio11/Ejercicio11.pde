private Vector vectorBrowser;
private Vector vectorMarioBrowser;
private Vector  vectorMario;
private PVector posicionBrowser;


public void setup(){
size(500,500);
vectorBrowser = new Vector(new PVector(0,0), new PVector(10,0));
vectorMario = new Vector(new PVector(0,0),new PVector(0,40));
vectorMarioBrowser= new Vector();

}

public void draw(){
background(255);
 posicionBrowser= new PVector(width/2,height/2);
vectorMario.setOrigen(new PVector(mouseX,mouseY));
vectorBrowser.setOrigen(posicionBrowser);
vectorBrowser.getDestino().normalize();
vectorBrowser.display();
dibujarVectorMarioeBrowser();
escribirMensaje();

}


public void dibujarVectorMarioeBrowser(){
vectorMarioBrowser.setOrigen(posicionBrowser);
vectorMarioBrowser.setDestino(PVector.sub(vectorMario.getOrigen(),posicionBrowser).normalize());
vectorMarioBrowser.display();
}




public void escribirMensaje(){
  float dotProduct = vectorBrowser.obtenerProductoPunto(vectorMarioBrowser);
  //println(dotProduct);
  textSize(20);
  fill(#9DFF0D);
  text(dotProduct,180,130);
  if(dotProduct > 0.866  ){
  text(" Mario fue detectado ",125,100);
   
}else{

  text(" Mario no detectado ",125,100);

}

}
