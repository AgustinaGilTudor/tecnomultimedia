//https://youtu.be/ROOnxq3F1Wo (link video explicación)
int tam=10;
void setup() {
  size(600, 600);
  noStroke();
}
void draw() {
  //for anidado, grilla de círculos y rectangulos
  for (int x=0; x<width+40; x+=40) {
    for (int y=0; y<height+40; y+=40) {
      //map para opacidad en 'x' y en 'y' con el movimiento del mouse
      float mx=map(mouseX, x, width+40, 0, 255);
      float my=map(mouseY, y, height+40, 0, 255);
      //condicional para color de círculos
      if (x<width/2 && y<height/2) {
      fill(random(0,127));
      } else if (x>width/2&& y<height/2) {
        fill(255);
      }else if(x<width/2 && y>height/2){
      fill(0);
      }else if(x>width/2 && y>height/2){
      fill(random(127,255));
      }
      circle(x, y, 40);
      //cambio de opacidad de rectángulos 
      fill(mx, my);
      rect(x, y, width, height, tam);
    }
  }
  //botón reinicio
  println("FrameCount:"+frameCount+" / "+"tam:"+tam);
  if (frameCount>=200) {
    //Botón reinicio (lo visual)
    fill(255, 0, 0);
    circle(550, 550, 40);
    fill(0);
    text("R", 547, 555);
  }
}
//reinicio de variaibles
void mousePressed() {
  if (dist(mouseX, mouseY, 550, 550)<40/2 && frameCount>=200) {
    tam=10;
    frameCount=0;
  }
}
void keyPressed() {
  //modificar tamaño de los rectángulos
  if (key=='+') {
    tam+=5;
  } else if (key=='-') {
    tam-=5;
  }
}
