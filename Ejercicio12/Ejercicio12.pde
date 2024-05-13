private Tanque miTanque;
private Escenario miEscenario;
private TanqueEnemigo tanqueEnemigo;
private JoyPad joyPad;
void setup() {
  size(600, 600);
  miTanque = new Tanque(new PVector(300, 450));
  miEscenario = new Escenario();
  tanqueEnemigo = new TanqueEnemigo(new PVector(300, 100));
  joyPad = new JoyPad();
}

void draw() {
  
  miEscenario.display();
  tanqueEnemigo.display();
  boolean esVisible = validarRangoDeVision();
  if (!esVisible) {
    miTanque.display();
  }
  displayVectores();
  if (joyPad.isDerechaPresionado()) {
    miTanque.move(2); 
  }
  if (joyPad.isIzquierdaPresionado()) {
    miTanque.move(4); 
  }
    if (joyPad.isArribaPresionado()) {
    miTanque.move(1); 
  }
  if (joyPad.isAbajoPresionado()) {
    miTanque.move(3); 
  }
  
  // Dibujar texto
  fill(0, 0, 255);
  textSize(20);
  if (esVisible) {
    text("Es detectado", 10, 20);
  } else {
    text("No es detectado", 10, 20);
  }
}

boolean validarRangoDeVision() {
  return miTanque.esVisible(tanqueEnemigo);
}

void displayVectores() {
  PVector direccionVector= PVector.sub(tanqueEnemigo.getPosicion(),miTanque.getPosicion()).normalize().mult(50);
  strokeWeight(1);
  stroke(255,0,0);
  PVector proyeccionDireccionVector = PVector.add(miTanque.getPosicion(),direccionVector); 
  stroke(#440DFF);//color azul
   line(miTanque.getPosicion().x,miTanque.getPosicion().y,proyeccionDireccionVector.x,proyeccionDireccionVector.y);
   strokeWeight(10);
  point(proyeccionDireccionVector.x,proyeccionDireccionVector.y);
  
  switch(miTanque.getDireccion()){
    case 0: { 
      PVector axysVisualizacion = new PVector(0,-1);
      PVector proyeccionAxysVisualizacion = axysVisualizacion.mult(50);
      strokeWeight(1);
      stroke(#FF0D0D);//color rojo
      line(miTanque.getPosicion().x,miTanque.getPosicion().y,
      miTanque.getPosicion().x + proyeccionAxysVisualizacion.x,
      miTanque.getPosicion().y + proyeccionAxysVisualizacion.y
      );
      strokeWeight(10);
      point(miTanque.getPosicion().x + proyeccionAxysVisualizacion.x,
      miTanque.getPosicion().y + proyeccionAxysVisualizacion.y);
      break;
    }
  }
}

void keyPressed() {
  if (key == 'd' || keyCode == RIGHT) {
    joyPad.setPresionoDerecha(true);
  }
  if (key == 'a' || keyCode == LEFT) {
    joyPad.setPresionoIzquierda(true);
  }
  if (key == 'w' || keyCode == UP) {
    joyPad.setPresionoArriba(true);
  }
  if (key == 's' || keyCode == DOWN) {
    joyPad.setPresionoAbajo(true);
  }
  if(keyCode == ENTER){
    println("Se presionó la tecla");
  }
}

void keyReleased() {
  if (key == 'd' || keyCode == RIGHT) {
    joyPad.setPresionoDerecha(false);
  }
  if (key == 'a' || keyCode == LEFT) {
    joyPad.setPresionoIzquierda(false);
  }
    if (key == 'w' || keyCode == UP) {
    joyPad.setPresionoArriba(false);
  }
  if (key == 's' || keyCode == DOWN) {
    joyPad.setPresionoAbajo(false);
  }
}
