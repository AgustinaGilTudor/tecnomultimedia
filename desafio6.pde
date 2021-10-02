
Pelota p;

void setup() {
  size( 500, 300 );
  strokeWeight( 4 );
  p= new Pelota(width/2, height/2, 50, 200, 200, 0);
}

void draw() {
  background( 128 );
  p.mostrar();
  p.dirDerecha();
  p.dirIzquierda();
}
