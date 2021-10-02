class Pelota {

  //Declarar variables

  int radio;
  float posx, posy;
  color relleno;
  boolean sentido;

  //Constructor

  Pelota(float posX, float posY, int Radio, color r, color g, color b) {

    //Inicializar variables

    radio= Radio;
    posx=posX;
    posy=posY;
    relleno= color(r, g, b);
  }

  //Métodos

  void mostrar() {
    fill( relleno );
    ellipse( posx, posy, radio*2, radio*2 );
    println( sentido );
  }

  void dirDerecha() {
    //actualizar valores: detectar bordes
    if ( posx+radio == width ) {
      //CUANDO: toco borde derecho
      sentido = false;
    }
    if ( posx-radio == 0 ) {
      //CUANDO: toco borde izquierdo
      sentido = true;
    }
  }

  void dirIzquierda() {

    //actualizar valores: ejecutar movimiento

    if ( sentido ) {
      posx++;  //voy hacia la derecha
    } else {
      posx--;  //voy hacia la izquierda
    }
  }
}
