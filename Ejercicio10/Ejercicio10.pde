



public void setup(){
  size(700,700);

 


}

public void draw(){
  background(255,255,255);

  translate(width/2, height/2);
  stroke(1);
  strokeWeight(1);
  line(-width/2, 0, width/2, 0);
  line(0, -height/2, 0, height/2);  
  
  
  strokeWeight(3);
  stroke(#FF0009);
  vector1.display();
  stroke(#120FFF);
  vector2.display();
   stroke(#76FF00);
  vector3.display();
   stroke(#FF9E00);
  vector4.display();

 
  
    stroke(#000000);
  strokeWeight(10);
  point(-10,-20);
  point(40,-10);
  point(50,20);
   point(0,10);

   //RestarVectores();
  // SumarVectores();


}

public void SumarVectores(){
Vector vectorSuma = new Vector();
vectorSuma.origen = vector1.origen;
vectorSuma.destino.x = vector1.destino.x +vector2.destino.x;
vectorSuma.destino.y = vector1.destino.y +vector2.destino.y;
vectorSuma.display();
//println(vectorSuma.origen,vectorSuma.destino);
}

public void RestarVectores(){
Vector vectorResta = new Vector();
vectorResta.origen = vector1.origen;
vectorResta.destino.x = vector1.destino.x - vector2.destino.x;
vectorResta.destino.y = vector1.destino.y - vector2.destino.y;
vectorResta.display();
//println(vectorResta.origen,vectorResta.destino);
}
