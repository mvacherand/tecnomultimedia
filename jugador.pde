class Jugador {
  PVector posicion, velocidad;
  PImage base;
  int ancho, alto;
  
  Jugador() {
    ancho = 70;
    alto = 10; 
    base = loadImage("base.png");
    posicion = new PVector(width/2, height - 50); //Su posicion inicial estará centrada horizontalmente
    velocidad = new PVector(6, 0); //Su velocidad en x será de 4, y en y será de 0, ya que solo se puede mover a los lados
  }
  void mover() {
    if(keyPressed) {
      if(keyCode == LEFT) {   //Si se presiona la tecla LEFT, la base se moverá a la izquierda
        posicion.x -= velocidad.x;
      } 
      else if(keyCode == RIGHT) {   //Si se presiona la tecla RIGHT, la base se moverá a la derecha
        posicion.x += velocidad.x;
      }
    }
    posicion.x = constrain(posicion.x, ancho/2, width - ancho/2);  /*Se crea una restriccion para la posicion en x.*/
  }                                                                /*Solo puede tener valores entre el ancho/2 y el width - ancho/2
                                                                   de esta manera no se saldrá de la pantalla */
  void mostrar() {
    imageMode(CENTER);
    image(base, posicion.x, posicion.y);
  }
  PVector getPosicion() {
    return posicion;
  }
  int getAncho() {
    return ancho;
  }
  int getAlto() {
    return alto;
  }
}
