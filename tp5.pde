/* Micaela Vacherand 83664/1 
   Com-2 Matías Jauregui Lorda
   Trabajo Final
   https://youtu.be/4k0qLd1GnUc */

import ddf.minim.*;

Minim musica;
AudioPlayer player1, chocar,ganar,perder;

// creo instancia juego
Juego juego;

void setup(){
  size(790,590);
  //inicializo llamando al constructor
  juego = new Juego();
  musica= new Minim (this);
  player1= musica.loadFile( "crash.mp3");
  chocar=musica.loadFile("chocar.wav");
  ganar=musica.loadFile("ganar.wav");
  perder=musica.loadFile("perder.wav");
  
}
void draw(){
  //dibujo llamando al método
  juego.dibujar();
  player1.play();
  
}

void mousePressed(){
  juego.click();
}

void keyPressed(){
  juego.keyPressed();
}
