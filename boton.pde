class Boton {

  //CAMPOS
  color fondo;
  color btnEstado;
  float btnX;
  float btnY;
  float btnR;

  //CONSTRUCTOR
  Boton() {
    fondo = color(0);
    btnEstado = color( 255 );
    btnX = 250;
    btnY = 350;
    btnR = 50;
  }

  //MÉTODOS

  void draw() {
    background( fondo );
    fill( btnEstado );
    circle( btnX, btnY, btnR*2 );
  }

  void update() {
    //actualizar estado boton
    if ( dist(mouseX, mouseY, btnX, btnY ) < btnR ) {
      btnEstado = color( 255, 0, 0 );
    } else {
      btnEstado = color ( 100 );
    }
  }

  void click() {
    //calcular si hago clic en mi boton
    if ( dist(mouseX, mouseY, btnX, btnY ) < btnR ) {
      fondo = color( random(255), 0, 0 );
    }
  }
}
