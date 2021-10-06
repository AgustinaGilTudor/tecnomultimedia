
//boton
void boton(int x, int y, int s, String t) {
  pushStyle();
  fill(0);
  textFont(tituloo);
  textSize(s);
  fill(255, 238, 108);
  rect(x, y, 200, 60, 20);
  fill(0);
  text(t, x, y+10);
  popStyle();
}

//texto

void texto (String txt, PFont f, color c, float y) {
  pushStyle();
  fill(c);
  textFont(f);
  text(txt, width/2, y);
  popStyle();
}

//void titulo(color r, color g, color b) {
//fill(r,g,b);
//textFont(tituloo);
//}

void creditos(color c) {
  pushStyle();
  fill(c);
  text("Dinosaurios", width/2, posY);
  text("Agustina Gil Tudor", width/2, posY+100);
  text("Comisión 2", width/2, posY+150);
  boton(150, 100, 30, "Inicio");
  //Reinicio valores
  posY--;
  if (posY<=-100) {
    posY=710;
  }
  popStyle();
}
