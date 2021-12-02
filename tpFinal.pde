// LINK EXPLICACIÓN: https://www.youtube.com/watch?v=Y0z_BL15kYo
// -----------------------------------------------------

Aventura a;

void setup() {
  size(800, 600);
  a= new Aventura();
}

void draw() {
  a.draw();
}

void mousePressed() {
  a.mouse();
}

void keyPressed() {
  a.teclado();
}
