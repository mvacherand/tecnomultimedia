//Micaela  Vacherand 83664/1
//https://youtu.be/uyd4tulZjFo

PImage pouinicio;
PImage pouinstrucciones;
PImage poucomiendo;
PImage poutriste;
PImage pizza;
int estado;
color rojo;
int c=10;
int puntos;
float [] posicionesX = new float [c];
float [] posicionesY = new float [c];
float m;
PFont tipografia;
void setup(){
  size (500,500);
  color (255,0,0);
  pouinicio= loadImage("pouinicio.png");
  pouinstrucciones= loadImage("pouinstrucciones.png");
  poucomiendo= loadImage("poucomiendo.png");
  poutriste=loadImage("poutriste.png");
  pizza=loadImage("pizza.png");
  tipografia= loadFont("Ravie-48.vlw");
  textFont(tipografia);
  rojo= color(255,0,0);
 
for (int i = 0; i < c; i++  ) {
    posicionesX[i] = random(0, width-100);
  }
  for (int i = 0; i < c; i++  ) {
    posicionesY[i] = random(-600, 0);
  }
}
void draw() {
  m = constrain(mouseX, 0, width-100);
  estados();
} 
void mousePressed() {
  iniciar();
}
void keyPressed() {
  reiniciar();
}
