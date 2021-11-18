
class Estado {
  //Propiedades
  PFont texto;
  PImage[]f;
  float posx;
  boolean c;
  Arbol[] a=new Arbol[4];
  Nube[] n=new Nube[5];
  //Constructor
  Estado() {
    posx=random(width, 900);
    texto=createFont("FingerPaint-Regular.ttf", 30);
    f=new PImage[6];
    for (int i=0; i<6; i++) {
      f[i]=loadImage("fondo0"+i+".png");
    }

    for (int i=0; i<5; i++) {
      n[i] =new Nube(random(100, 250));
    }
    for (int i=0; i<4; i++) {
      a[i] =new Arbol();
    }
  }


  //Métodos
  void Menu() {
    textFont(texto);
    f[0].resize(width, height);
    background(f[0]);
    fill(0);
    textAlign(CENTER);
    text("Dinosaurios", width/ 2, 100);
    text("Presiona barra espaciadora", 400, 340);
    text("para iniciar", 400, 380);
  }
  void Jugar() {
    f[1].resize(width, height);
    background(f[1]);
    f[3].resize(200, 200);
    posx-=4;
    for (int i=0; i<5; i++) {
      n[i].dibujar();
      n[i].update();
      n[i].reciclar();
    }
    for (int i=0; i<4; i++) {
      a[i].dibujar();
      a[i].update();
      a[i].reciclar();
    }
  }
  void Ganar() {
    f[0].resize(width, height);
    background(f[0]);
    textFont(texto);
    fill(0);
    textAlign(CENTER);
    textSize(50);
    text("¡Ganaste!", 400, 200);
    textSize(30);
    text("Presione la barra espaciadora", width/2, 300);
    text("para continuar", width/2, 350);
  }

  void Perder() {
    f[5].resize(width, height);
    background(f[5]);
    textFont(texto);
    fill(0);
    textAlign(CENTER);
    text("Perdiste", width/2, 100);
    text("Presione la barra espaciadora para continuar", width/2, 300);
  }
}
