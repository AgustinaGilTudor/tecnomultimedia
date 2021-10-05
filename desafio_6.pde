Boton b;

void setup() {
  size( 500, 500 );

  b= new Boton();
}

void draw() {

  b.update();
  b.draw();
}

void mousePressed() {

  b.click();
}
