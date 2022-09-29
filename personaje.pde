class personaje{
  int x,y,tam,vel;
  PImage alien;
  
  personaje(){
    x=10;
    y=500;
    vel=15;
    tam=60;
    vel=4;
    alien=loadImage("alien1.png");
  }
  void mover(){
    if(keyPressed){
      if(keyCode==RIGHT){ //derecha
        x+=vel;
      }
      else if (keyCode==LEFT){//izquierda
        x-=vel;
      }
      else if(keyCode==UP){
        y-=vel;
      }
      else if(keyCode==DOWN){
        y+=vel;
      }
    }
  }
  void dibujar(){
  image(alien,x,y,tam,tam);  
  }
}
