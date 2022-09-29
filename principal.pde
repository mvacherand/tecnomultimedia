class juego{
  //decalro las instancias de mis clases(objetos)
  fondo fondo;
  obstaculo[] obstaculos;  //creo un arreglo de bola (obstaculo)
  personaje alien;
  llegada alien2,alien3;
  laberinto laberinto;
  
  //constructor
  juego(){
     //inicializo los objetos, llamo a los constructores
      fondo= new fondo();
    obstaculos= new obstaculo [5];
    for (int i=0; i<5; i++){
    obstaculos[i]= new obstaculo (height/2+(int)random(height/2),(int)random(width));
    }
      alien= new personaje();
      alien2= new llegada();
      alien3= new llegada();
      laberinto= new laberinto();
  }
  void actualizar(){
     alien.mover();
     
  }
   void dibujar(){
    fondo.dibujar();
    for(int i=0; i<5; i++){
      obstaculos[i].dibujar(fondo.x);
    }
    laberinto.dibujar(); 
    alien.dibujar();
    alien2.dibujar();
    alien3.dibujar();
} 
   /*void reiniciar(){
     if(keyPressed){
       if(keyCode== ENTER){
    
       }
     }
   }*/
}
