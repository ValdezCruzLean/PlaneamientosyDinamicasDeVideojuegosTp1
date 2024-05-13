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
    PVector direccionDeTanqueEnemigoVector = PVector.sub(tanqueEnemigo.getPosicion(),this.posicion);
    direccionDeTanqueEnemigoVector.normalize();
  
    PVector direccionParaVerVector= new PVector();
  
    switch(this.direccion){
      case 0:{
        direccionParaVerVector = new PVector(0,-1,0);
        break;
      }
    }
  
    float dotProduct = PVector.dot(direccionParaVerVector,direccionDeTanqueEnemigoVector);
    if (dotProduct > 0.8){
      esVisible = true;
      girar(direccionParaVerVector,direccionDeTanqueEnemigoVector);
    }
    return esVisible;
  }
  
  public void girar(PVector direccionParaVerVector,PVector direccionDeTanqueEnemigoVector){
    float angulo = PVector.angleBetween(direccionParaVerVector,direccionDeTanqueEnemigoVector);
    PVector rotacionAxys = direccionParaVerVector.cross(direccionDeTanqueEnemigoVector);
    int agujaReloj =1;
  
    if (rotacionAxys.z < 0){
      agujaReloj=-1;
    }
  
    pushMatrix();
    imageMode(CENTER);
    translate(this.posicion.x,this.posicion.y);
    rotate(angulo*agujaReloj);
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
  
  public void disparar(SpawnerBalas spawner){
    
  PVector direccionVector= PVector.sub(tanqueEnemigo.getPosicion(),miTanque.getPosicion()).normalize().mult(50);
  PVector proyeccionDireccionVector = PVector.add(miTanque.getPosicion(),direccionVector); 
 
    Bala unaBala = new Bala(new PVector(this.posicion.x,this.posicion.y),proyeccionDireccionVector);
    Bala[] balas = spawner.getBalas();
    for(int i=0;i<balas.length;i++){
      if(balas[i]==null){
        balas[i]=unaBala;
        break;
      }
    }
    spawner.setBalas(balas);
  }
  
  public void display(){
    pushMatrix();
    translate(this.posicion.x, this.posicion.y);
    rotate(radians(direccion * 90)); // Rotar el tanque segun la dirección
    imageMode(CENTER);
    image(this.imagen, 0, 0, 50, 50); // Dibujar el tanque
    popMatrix();
  }
  
  void mover(int direccion) {
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
