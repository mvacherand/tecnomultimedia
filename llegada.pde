class llegada{
  int x,y,tam;
  PFont tipografia;
  PImage alien2,alien3;
  color azul;
 
  llegada(){
   x=670;
   y=50;
   tam=60;
   azul= color (0,21,128);
   alien2=loadImage("alien2.png");
   alien3=loadImage("alien3.png");
   tipografia=loadFont("NirmalaUI-Bold-20.vlw");
   textFont(tipografia);
  }
  void dibujar(){
    image(alien2,x,y,tam,tam);
    image(alien3,730,y,tam,tam);
    fill(azul);
    textSize(18);
    text("LLEGADA",690,40);
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
