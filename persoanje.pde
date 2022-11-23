class Personaje {
  //Propiedades
  float x, y, ancho, alto;
  float desp = 10;
  PImage img;
  int cantVidas;
  int cantDeSaltos;
  float radColision;
  float posy, posx;
  int vel = 10;

  boolean saltando = false;

  ///constructor/// 
  Personaje(float x, float y) {
    posx = x;
    posy = y;
    ancho = 100;
    alto = 150;
    cantVidas = 5; 
    img = loadImage("personaje.png");
    cantDeSaltos = 45;
    radColision = 100;
    
  }


  //Getters y Setters
  public void setSaltar(boolean saltandoValor) {
    saltando = saltandoValor;
  }
  
  float getX(){
    return x;
  }
  float getY(){
    return y;
  }
  
  float getAncho(){
    return ancho;
  }
  float getAlto(){
    return alto;
  }
 
  float getradColision(){
    return radColision;
  }
  int getcantVidas(){
    return cantVidas;
  }
  int getcantDeSaltos(){
    return cantDeSaltos;
  }



  //Metodos
  void dibujar() {
   
    image(img, posx-100, posy-150, ancho, alto);

    x=posx;
    y=posy; 
    
  }
  //Acciones del personaje
  void accionar() {
    if (saltando) {
      posy = posy - vel;
      vel = vel - 1;

      if (posy >= 550) {
        posy = 550;
        vel = 22;
        saltando = false;
      }
    }
  }
  
  void quitarVida(){
    cantVidas --;
  }
  
  void quitarSalto(){
    cantDeSaltos --;
    }
    
  
}
