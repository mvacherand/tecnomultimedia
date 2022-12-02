class Boton{ // en esta clase creo los botones jugar, creditos, siguiente. 
  
  //declaro variables
    float x, y, ancho, alto, size;
    String label;
  
   ///constructor/// 
    Boton(String label_, float x_, float y_, float ancho_, float alto_, float size_){
     x = x_;
     y = y_;
     ancho = ancho_;
     alto = alto_;
     label = label_;
     size = size_;
     
    }
  
  //Metodos
    void actualizar(){
      dibujar();
      
    }
    
    void dibujar(){
      pushMatrix();
      pushStyle();
      translate(x,y);
      noStroke();
      if(mouseEstaEncima()){
        fill(#FADC47);
      }else {
        fill(#E09F12);
      }
      //rectMode(CENTER);
     // rect (width/2,500, 100,80);
     // rect(width/2, 80, ancho,alto, 8);
      //Escribir etiqueta
      fill(#FF0000);
      textAlign(CENTER, CENTER);
      textSize(size);
      text(label, 0, 0);
      popStyle();
      popMatrix();
    } 
    
    boolean mouseEstaEncima(){ // cree una variable booleana para que me ayude a detectar si estoy dentro o no del boton
      if(mouseX > x - ancho/2 && mouseX < x+ancho/2
          && mouseY > y - alto/2 && mouseY < y+ancho/2){
            return true;
          }else {
            return false;
          }
    }
}
