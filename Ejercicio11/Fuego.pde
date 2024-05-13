class Fuego{
  private PVector posicion;
  private PVector velocidad;
  private PImage imagen;
  private boolean detectado=true;
  
  public Fuego(PVector posicion,PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
  }
  
  public void mover(){
    
    if(detectado==true){
      this.posicion.add(velocidad);
    }
    display();
  }

  public void display(){
   imagen=loadImage("fuego.png");
   imagen.resize(60,60);
   image(imagen,posicion.x,posicion.y);
   if(this.posicion.x>width){
     this.posicion.x=-50;
     detectado=false;
   }
   if(this.posicion.x==-40){
     this.posicion.x=width/2;
     this.posicion.add(velocidad);
   }
   
  }




}
