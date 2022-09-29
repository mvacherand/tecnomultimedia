class fondo{
  PImage fondo;
  int x;
  
  fondo(){
  x=width;
  fondo=loadImage("fondo.jpg");
 }
  void  dibujar(){
   image(fondo,x+200,0,1400,800);
   image(fondo, x-1800,0,2000,800);
    mover();  
  }
 void mover(){
   x=x<0 ? x : -width;// que se mueva si es menor a 0 pero mahor a width
   x +=1.5;
 }
}
