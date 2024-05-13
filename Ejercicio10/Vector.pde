class Vector{


  public Vector(PVector origen, PVector destino){
    this.origen = origen;
    this.destino = destino;
  }

  public void display(){
    line(origen.x,origen.y,destino.x,destino.y);
  }



  public PVector getPuntoA(){
    return puntoA;
  }

  public PVector getPuntoB(){
    return puntoB;
  }

  public PVector getPuntoC(){
    return puntoC;
  }

  public PVector getPuntoD(){
    return puntoD;
  }

  public void setOrigen(PVector origen){
    this.origen= origen;
  }

  public PVector getOrigen(){
    return this.origen;
  }

  public void setDestino(PVector destino){
    this.destino= destino;
  }

  public PVector getDestino(){
    return this.destino;
  }
}
