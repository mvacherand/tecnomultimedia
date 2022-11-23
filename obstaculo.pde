class Obstaculo{ // en esta clase creo los obstaculos 
  //Propiedades ---> declaro variables
    float x, y, ancho, alto;
    float radColision;
    float desx;
    String tipo;
    PImage imagenObs ;
  
  
  //Constructor
    Obstaculo(){
      
      x = random(0, 2000);
      y = 515;
      ancho = 80;
      alto = 80;
      
      tipo = "obj_" + int(random(1, 6));
      
      sortearUbicacion();
      
      imagenObs = loadImage(tipo + ".png");
       desx = -6;
    }
    

  float getAncho(){
    return ancho;
  }
  float getAlto(){
    return alto;
  }
    float getX(){
      return x;
    }
    float getY(){
      return y;
    }
    float getradColision(){
      return radColision;
      
    }
    String getTipo(){
      return tipo;
    }
  
  //Metodos
    void dibujarObstaculo( int a ){
      pushStyle();
     // pushMatrix();
      imageMode(CENTER);
      image(imagenObs, x+a, y, ancho, alto);
       x += desx;
        if (x <- height){
          x = 780;
          
        }
      popStyle();
      //popMatrix();
    }
    void sortearUbicacion(){
         x = random(500, 5000);
         y = 515;
         
       }
       
    
}
