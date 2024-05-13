Pelota pelota;
Escenario miEscenario;
PVector normal;

void setup() {
  size(800, 400);
  pelota = new Pelota(new PVector(width/2, 260), new PVector(3, -2));
  miEscenario = new Escenario();
  normal = new PVector(1, 1).normalize(); // Vector normal de la pared
}

void draw() {
  background(255);
  miEscenario.display();
  pelota.display();
  pelota.mover();
  /* Comprueba si la pelota ha alcanzado los limites y la refleja */
  if (pelota.getPosicion().x > width -50|| pelota.getPosicion().x < 0) {
    // Calcula el vector de reflexion en el eje X
    PVector reflexionX = new PVector(-1, 0);
    reflexionX.mult(2 * PVector.dot(pelota.getVelocidad(), reflexionX));
    PVector nuevaVelocidadX = PVector.sub(pelota.getVelocidad(), reflexionX);
    pelota.setVelocidad(nuevaVelocidadX);
  }
  

}
