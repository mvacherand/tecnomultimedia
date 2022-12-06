class Fondo{ // en clase fondo creo los fondos
  //Propiedades
    PImage fondoPant;
    color colorDeTexto;
    String texto;
    int alineacion;
    float x, y, ancho, alto, velX;
    float t;
    String tipo;
    ///constructor/// 
    Fondo(String tipoPant, float x_, float y_, int ancho_, int alto_){ // los parametros los declaré en la clase principal del juego
     x = x_;
     y = y_;
     ancho = ancho_;
     alto = alto_;
     tipo = tipoPant;
     fondoPant = loadImage(tipo + ".jpg");
    
      //velX = -10;
      
      }
      
    Fondo(String tipoPant, String texto_, color color_, int alineacion_, float x_, float y_, int ancho_, int alto_){ // los parametros los declaré en la clase principal del juego
     x = x_;
     y = y_;
     ancho = ancho_;
     alto = alto_;
     colorDeTexto = color_;
     texto = texto_;
     alineacion = alineacion_;
     
     
     tipo = tipoPant;
   
     fondoPant = loadImage(tipo + ".jpg");
     
     
      
      }
  
  
     //Metodo
    //Fondo de pantall
        
      void dibujarPantalla(){
        image(fondoPant, ancho, alto);
       
      }
      
      
      void dibujarPantallaCredito(){
        image(fondoPant, ancho, alto);
        fill(0);
        textSize(12);
        text(texto, width/2, 335);
        textAlign(CENTER);
      }
     

}
