class Tanque{

  private PImage imagen;
  private PVector posicion;
  private PVector velocidad;
  private int direccion;
  
  
  public Tanque (PVector posicion){
    this.posicion= posicion;
    this.velocidad= new PVector(3,3);
    this.direccion= 0;
    this.imagen= loadImage("TankPlayer.png");
  
  }
  
  public boolean esVisible (TanqueEnemigo tanqueEnemigo){
    boolean esVisible = false;
    PVector direccionDeTankEnemyVector = PVector.sub(tanqueEnemigo.getPosicion(),this.posicion);
    direccionDeTankEnemyVector.normalize();
  
    PVector direcciontoViewVector= new PVector();
  
    switch(this.direccion){
      case 0:{
        direcciontoViewVector = new PVector(0,-1,0);
        break;
      }
    }
  
    float dotProduct = PVector.dot(direcciontoViewVector,direccionDeTankEnemyVector);
    if (dotProduct > 0.8){
      esVisible = true;
      spin(direcciontoViewVector,direccionDeTankEnemyVector);
    }
    return esVisible;
  }
  
  public void spin(PVector direcciontoViewVector,PVector direccionDeTanqueEnemigoVector){
    float angle = PVector.angleBetween(direcciontoViewVector,direccionDeTanqueEnemigoVector);
    PVector rotationAxys = direcciontoViewVector.cross(direccionDeTanqueEnemigoVector);
    int clockWise =1;
  
    if (rotationAxys.z < 0){
      clockWise=-1;
    }
  
    pushMatrix();
    imageMode(CENTER);
    translate(this.posicion.x,this.posicion.y);
    rotate(angle*clockWise);
    image(this.imagen,0,0,this.imagen.width* 0.10,this.imagen.height* 0.10);
    popMatrix();
  }
  
  public void setPosicion(PVector posicion){
    this.posicion= posicion;
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setDireccion(int direccion){
    this.direccion= direccion;
  }
  
  public int getDireccion(){
    return this.direccion;
  }
  

  
  public void display(){
    pushMatrix();
    translate(this.posicion.x, this.posicion.y);
    rotate(radians(direccion * 90)); // Rotar el tanque segun la dirección
    imageMode(CENTER);
    image(this.imagen, 0, 0, 50, 50); // Dibujar el tanque
    popMatrix();
  }
  
  void move(int direccion) {
    switch (direccion) {
      case 1: // Arriba
        posicion.y -= velocidad.y;
        break;
      case 2: // Derecha
        posicion.x += velocidad.x;
        break;
      case 3: // Abajo
        posicion.y += velocidad.y;
        break;
      case 4: // Izquierda
        posicion.x -= velocidad.x;
        break;
    }
   // this.direccion = direccion - 1; // Actualizar la direccion del tanque
  }
}
