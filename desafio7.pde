
Medusa [] medusas=new Medusa[20];

void setup() {
  size(800, 600);
  for (int i=0; i<20; i++) {
    medusas[i] =new Medusa(random(700, 800));
  }
}
void draw() {
    background(124,184,255);
  for (int i=0; i<20; i++) {
    medusas[i].draw();
    medusas[i].mover();
    medusas[i].reiniciar();
  }
}
