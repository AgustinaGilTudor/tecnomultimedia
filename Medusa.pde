class Medusa {
  //Declarar variables
  float posY;
  float posX=random(100,700);
  float borde=3;
  //Constructor
  Medusa(float posy) {
    posY=posy; 
}

  //Métodos
  void draw() {
    fill(109,81,242);
    stroke(borde);
    stroke(255);
    line(posX-15,posY,posX-15,posY+30);
    line(posX-10,posY,posX-10,posY+25);
    line(posX-5,posY,posX-5,posY+30);
    line(posX,posY,posX,posY+25);
    line(posX+5,posY,posX+5,posY+30);
    line(posX+10,posY,posX+10,posY+25);
    line(posX+15,posY,posX+15,posY+30);
   arc(posX,posY,random(45,48),50,PI,TWO_PI,OPEN);
  }
  void mover() {
    println(posY);
    posY-=random(1,2);
  }

  void reiniciar() {
    if (posY<=0) {
      posY=700;
  }
  }
}
