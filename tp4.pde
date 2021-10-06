//Explicación:https://youtu.be/YrKavagYdIo
//Canción: https://www.youtube.com/watch?v=ujby_E-5obQ

String pantalla;
//int pantalla=1;
PImage [] persona=new PImage[18];
PImage [] dino=new PImage[12];
PFont textoo, tituloo;
int posY=610;

void setup() {

  size(800, 600);

  for (int i=0; i<18; i++) {
    persona[i]=loadImage("persona"+i+".png");
    fill(0);
  }

  for (int i=0; i<12; i++) {
    dino[i]=loadImage("dino"+i+".jpg");
    pantalla="Inicio" ;
  }

  tituloo=createFont("FingerPaint-Regular.ttf", 30);
  textoo=createFont("CardenioModern-Bold.otf", 30);
  textAlign(CENTER);
  rectMode(CENTER);
  noStroke();
}
void draw() {

  if (pantalla=="Inicio") {
    //imágenes
    dino[1].resize(width, height);
    background(dino[1]);
    dino[10].resize(700, 450);
    image(dino[10], 50, 50);

    //texto

    texto("Dinosaurios", tituloo, color(0), 100);
    boton(200, 500, 30, "Iniciar");
    boton(600, 500, 30, "Créditos");
  } else if (pantalla=="Escapar") {

    //Imágenes

    dino[2].resize(width, height);
    background(dino[2]);
    persona[15].resize(800, 400);
    persona[1].resize(200, 200);
    image(persona[15], 50, 100);
    image(persona[1], 120, 300);

    //Texto

    texto("Estás caminando por el bosque y de repente", textoo, color(0), 30);
    texto("te encontrás con unos dinosaurios...", textoo, color(0), 70);
    texto("¿Qué hacés?", textoo, color(0), 110);
    boton(100, 550, 20, "Intentás razonar");
    boton(400, 550, 20, "Corrés");
    boton(700, 550, 20, "Los envenenás");
  } else if (pantalla=="Razonar") {

    //imágenes

    dino[2].resize(width, height);
    background(dino[2]);
    persona[15].resize(800, 400);
    persona[1].resize(200, 200);
    image(persona[15], 50, 100);
    image(persona[1], 120, 300);

    //texto

    boton(650, 530, 30, "Continuar");
    texto("Intentás razonar con ellos pero son", textoo, color(0), 30);
    texto("dinosaurios y no te entienden....", textoo, color(0), 70);
  } else if (pantalla=="Comen") {
    //imágenes

    dino[2].resize(width, height);
    background(dino[2]);
    persona[13].resize(600, 400);
    image(persona[13], 50, 100);

    //texto

    texto("Moriste, te comieron los dinosaurios...", textoo, color(170, 5, 5), 30);
    boton(650, 530, 30, "Continuar");
  } else if (pantalla=="Corrés") {
    //imágenes

    dino[3].resize(width, height);
    background(dino[3]);
    persona[14].resize(400, 400);
    image(persona[14], 150, 150);

    //texto

    texto("Tomás la decisión de salir corriendo", textoo, color(0), 30);
    texto("Te encontrás con dos caminos...", textoo, color(0), 70);
    texto("¿En qué dirección vas?", textoo, color(0), 110);
    boton(150, 350, 30, "Izquierda");
    boton(600, 350, 30, "Derecha");
  } else if (pantalla=="Créditos") {

    //imágenes

    background(251, 221, 221);
    persona[0].resize(400, 400);
    image(persona[0], 200, 250);

    //texto
    creditos(color(170, 5, 5));
  } else if (pantalla=="Derecha") {

    //imágenes

    dino[2].resize(width, height);
    background(dino[2]);
    persona[2].resize(400, 400);
    image(persona[2], 200, 150);

    //texto

    texto("Decidís salir corriendo por", textoo, color(0), 30);
    texto("el camino de la derecha...", textoo, color(0), 70);
    boton(650, 530, 30, "Continuar");
  } else if (pantalla=="Esconder") {

    //imágenes

    dino[2].resize(700, 500);
    background(251, 221, 221);
    image(dino[2], 100, 100);
    persona[16].resize(700, 700);
    image(persona[16], 50, -150);
    persona[17].resize(600, 300);
    image(persona[17], -50, 250);

    //texto

    texto("Te cansás de correr y decidís esconderte en", textoo, color(170, 5, 5), 30);
    texto("un árbol pero viene un apatasaurus,", textoo, color(170, 5, 5), 70);
    texto("te confunde con las hojas", textoo, color(170, 5, 5), 110);
    texto("y te come", textoo, color(170, 5, 5), 150);
    boton(650, 530, 30, "Continuar");
  } else if (pantalla=="Izquierda") {

    //imágenes

    dino[2].resize(width, height);
    background(dino[2]);
    persona[4].resize(400, 400);
    image(persona[4], 200, 150);

    //texto

    texto("Decidís salir corriendo por", textoo, color(0), 30);
    texto("el camino de la izquierda", textoo, color(0), 70);
    boton(650, 530, 30, "Continuar");
  } else if (pantalla=="Tropezás") {

    //imágenes

    dino[4].resize(width, height);
    background(dino[4]);
    persona[6].resize(400, 400);
    image(persona[6], 100, 130);

    //texto

    texto("Corrés tan rápido que te", textoo, color(170, 5, 5), 30);
    texto("tropezás con una piedra y te morís.", textoo, color(170, 5, 5), 70);
    boton(650, 530, 30, "Continuar");
  } else if (pantalla=="Veneno") {

    //imágenes

    dino[1].resize(width, height);
    background(dino[1]);
    persona[10].resize(400, 400);
    image(persona[10], 400, 100);
    persona[11].resize(400, 400);
    image(persona[11], 0, 100);

    //texto

    texto("Decidís envenenarlos pero tenés dos botellas", textoo, color(0), 30);
    texto("y no te acordás cuál era el veneno...", textoo, color(0), 70);
    texto("¿Qué botella elegís?", textoo, color(0), 110);
    boton(200, 500, 30, "botella 1");
    boton(600, 500, 30, "botella 2");
  } else if (pantalla=="Botella2") {

    //imágenes

    dino[2].resize(width, height);
    background(dino[2]);
    persona[15].resize(800, 400);
    persona[8].resize(200, 200);
    image(persona[15], 50, 100);
    image(persona[8], 120, 300);

    //texto

    texto("Elegís la botella violeta y se", textoo, color(157, 0, 118), 30);
    texto("las das a los dinosaurios...", textoo, color(157, 0, 118), 70);
    boton(650, 530, 30, "Continuar");
  } else if (pantalla=="Enamoran") {

    //imágenes

    dino[1].resize(width, height);
    background(dino[1]);
    dino[5].resize(700, 450);
    image(dino[5], 40, 100);

    //texto

    texto("Te confundiste de botella, les diste", textoo, color(157, 0, 118), 30);
    texto("una posión de amor...", textoo, color(157, 0, 118), 70);
    boton(650, 530, 30, "Continuar");
  } else if (pantalla=="Fiesta") {

    //imágenes

    dino[1].resize(width, height);
    background(dino[1]);
    dino[6].resize(700, 450);
    image(dino[6], 40, 100);
    persona[9].resize(200, 200);
    image(persona[9], 250, 350);

    //texto

    texto("Los dinosaurios se enamoran y te invitan a su", textoo, color(157, 0, 118), 30);
    texto("fiesta de compromiso", textoo, color(157, 0, 118), 70);
    boton(650, 530, 30, "Continuar");
  } else if (pantalla=="Botella1") {

    //imágenes

    dino[2].resize(width, height);
    background(dino[2]);
    persona[15].resize(800, 400);
    persona[12].resize(200, 200);
    image(persona[15], 50, 100);
    image(persona[12], 120, 300);

    //texto

    texto("Elegís la botella verde y se", textoo, color(1, 117, 5), 30);
    texto("las das a los dinosaurios...", textoo, color(1, 117, 5), 70);
    boton(650, 530, 30, "Continuar");
  } else if (pantalla=="Mueren") {
    //imágenes
    dino[7].resize(width, height);
    background(dino[7]);

    //texto

    texto("¡Felicitaciones, sos un asesino de dinosaurios!", textoo, color(170, 5, 5), 100);
    boton(650, 530, 30, "Continuar");
  } else if (pantalla=="Créditos2") {

    //imágenes

    dino[9].resize(width, height);
    background(dino[9]);

    //texto

    creditos(color(0, 0, 0));
  } else if (pantalla=="Créditos3") {

    //imágenes

    background(251, 221, 221);
    dino[0].resize(600, 400);
    image(dino[0], 100, 250);

    //texto
    creditos(color(170, 5, 5));
  } else if (pantalla=="Créditos4") {
    //imágenes

    dino[1].resize(width, height);
    background(dino[1]);
    dino[11].resize(700, 450);
    image(dino[11], 40, 100);

    //texto

    creditos(color(0, 0, 0));
  }
}
void mousePressed() {
  //  rect(x, y, 200, 60);
  //  boton(width/2, 600, "Iniciar");
  if (mouseX>100 && mouseX<300 && mouseY>460 && mouseY<520 && pantalla=="Inicio") {
    pantalla="Escapar";
  } else if (mouseX>500 && mouseX<700 && mouseY>460 && mouseY<520 && pantalla=="Inicio") {
    pantalla="Créditos4";
  } else if (mouseX>0 && mouseX<200 && mouseY>510 && mouseY<570 && pantalla=="Escapar") {
    pantalla="Razonar";
  } else if (mouseX>300 && mouseX<500 && mouseY>510 && mouseY<570 && pantalla=="Escapar") {
    pantalla="Corrés";
  } else if (mouseX>600 && mouseX<800 && mouseY>510 && mouseY<570 && pantalla=="Escapar") {
    pantalla="Veneno";
  } else if (mouseX>550 && mouseX<750 && mouseY>500 && mouseY<560 && pantalla=="Razonar") {
    pantalla="Comen";
  } else if (mouseX>550 && mouseX<750 && mouseY>500 && mouseY<560 && pantalla=="Comen") {
    pantalla="Créditos";
  } else if (mouseX>50 && mouseX<250 && mouseY>50 && mouseY<110 && pantalla=="Créditos") {
    pantalla="Inicio";
  } else if (mouseX>500 && mouseX<700 && mouseY>310 && mouseY<380 && pantalla=="Corrés") {
    pantalla="Derecha";
  } else if (mouseX>550 && mouseX<750 && mouseY>500 && mouseY<560 && pantalla=="Derecha") {
    pantalla="Esconder";
  } else if (mouseX>550 && mouseX<750 && mouseY>500 && mouseY<560 && pantalla=="Esconder") {
    pantalla="Créditos";
  } else if (mouseX>50 && mouseX<250 && mouseY>310 && mouseY<380 && pantalla=="Corrés") {
    pantalla="Izquierda";
  } else if (mouseX>550 && mouseX<750 && mouseY>500 && mouseY<560 && pantalla=="Izquierda") {
    pantalla="Tropezás";
  } else if (mouseX>550 && mouseX<750 && mouseY>500 && mouseY<560 && pantalla=="Tropezás") {
    pantalla="Créditos";
  } else  if (mouseX>500 && mouseX<700 && mouseY>450 && mouseY< 520 && pantalla=="Veneno") {
    pantalla="Botella2";
  } else if (mouseX>550 && mouseX<750 && mouseY>500 && mouseY<560 && pantalla=="Botella2") {
    pantalla="Enamoran";
  } else if (mouseX>550 && mouseX<750 && mouseY>500 && mouseY<560 && pantalla=="Enamoran") {
    pantalla="Fiesta";
  } else if (mouseX>550 && mouseX<750 && mouseY>500 && mouseY<560 && pantalla=="Fiesta") {
    pantalla="Créditos2";
  } else if (mouseX>50 && mouseX<250 && mouseY>50 && mouseY<110 && pantalla=="Créditos2") {
    pantalla="Inicio";
  } else  if (mouseX>100 && mouseX<300 && mouseY>450 && mouseY<520 && pantalla=="Veneno") {
    pantalla="Botella1";
  } else if (mouseX>550 && mouseX<750 && mouseY>500 && mouseY<560 && pantalla=="Botella1") {
    pantalla="Mueren";
  } else if (mouseX>550 && mouseX<750 && mouseY>500 && mouseY<560 && pantalla=="Mueren") {
    pantalla="Créditos3";
  } else if (mouseX>50 && mouseX<250 && mouseY>50 && mouseY<110 && pantalla=="Créditos3") {
    pantalla="Inicio";
  } else if (mouseX>50 && mouseX<250 && mouseY>50 && mouseY<110 && pantalla=="Créditos4") {
    pantalla="Inicio";
  }
}
