class obstaculo{
  PImage lagarra;
  int  x, y;
  
  obstaculo(int posy, int posx){
    lagarra=loadImage("lagarra.png");
    x=posx;
    y=posy;  
  }
  void dibujar(int a){
   image(lagarra,x+a,10,100,100);
   image(lagarra,x+a,300,100,100);// corregir 
  } 
}
