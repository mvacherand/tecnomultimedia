//Micaela Vacherand 83664/1
//https://youtu.be/6ClguyoY5QU
Jugador j;
Escenario e;
Pelota p;

PImage fondo;
PFont letra;
int vidas, nivel;
boolean start; // ayuda a iniciar el movimiento de la pelota
int estado;

void setup() {
  size(500, 700);
  
  fondo = loadImage("background.png"); 
  letra= loadFont("Ravie-48.vlw");
  textFont(letra);
  vidas = 7; //Se le asigna al jugador un maximo de 7 vidas
  nivel = 1; //Se inicia el juego en el nivel 1
  start = false;
  estado=0;
  j = new Jugador();
  e = new Escenario(nivel);
  p = new Pelota(j.getPosicion()); /* GET lo utilice para obtener la posición*/
  
  e.crearEscenario();
}


void draw() {
    if(!p.validarMuerte() && e.getNumBlocks() != 0) { /*GET : obtener número de bloques*/
    background(fondo);
    
    if(estado==0){
      textSize(50);
      text("Arkanoid", width/2, 300);
      textSize(15);
      text(" Utiliza las teclas left y right para moverte", width/2, 370);
      textSize(20);
      text("Press CENTER to start", width/2, 500);
    }
    if(estado==1){  /* Cuando quise introducir el código en el estado 1 para que desaparezcan las intrucciones y no me deja hacerlo*/
    }   
    
    e.mostrar(); 
    if(key == ' ') {
      start = true;
    }
    j.mover();
    j.mostrar();
    p.mostrar();
  
    if(start) {
      p.mover();
      p.validarBordes();
      p.rebotar(j.getPosicion(), j.getAncho(), j.getAlto());
      p.eliminarBlock(e.getBlocks(), e.getColores(),e.getAncho(), e.getAlto());
    }
       
    fill(255,239,59);    //color de las letras
    textAlign(CENTER);
    textSize(30);
    text("Score: " + p.getPuntos() + "   Life: " + vidas, width/2, 35); 
    } 
  else if(e.getNumBlocks() == 0) {      /*si no hay bloques para eliminar pasas al siguiente nivel*/
    background(0);
    fill(255);
    textAlign(CENTER);
    text("NIVEL " + nivel, width/2, height/2);   /* muestra el nivel que acabas de completar*/
    text("COMPLETED", width/2, height/2 + 50);
   
  if(keyPressed) {    /*si presionas una tecla, inicia el nivel siguiente*/
    nivel++; /*Aumenta nivel*/
    reset(); /*Inicia el juego en el nivel correspodiente */  
    }     
  }  
  else if(vidas == 0) {  /* si el jugador ya no tiene vidas, el juego termina*/
   background(0);
   fill(255,239,59); 
   textSize(45);
   text("GAME OVER", width/2, 120);               /* se le avisa al jugador que perdió*/
   textSize(25);
   text("Score " + p.getPuntos(), width/2, 200);  /*se muestra el puntaje alcanzado*/
   text("Press ENTER", width/2, 400);             /*reinicio*/
   textSize(15);
   text("Created by\nMicaela Vacherand", width/2, 500);   /*créditos*/
   text("Tecnología Multimedial 1", width/2, 600); 
   text("Comisión 2- Matias Jauregui Lorda", width/2, 625);
    
  if(keyCode == ENTER) {  /* BOTON DE REINICIO: si el jugador presiona la tecla ENTER, el juego inicia desde cero*/
    setup();
   }
 }
  else {
    p.setPosicion(j.getPosicion()); /* SET: la utilice para asignarle una ubicación a la pelota, es decir sobre la base*/
    start = false;
    vidas--; /*cuando pierde la pelota, pierde una vida*/
  }
}
void reset() {               /* crear siguiente nivel*/
  e = new Escenario(nivel);
  e.crearEscenario();
  j = new Jugador();
  p.setPosicion(j.getPosicion());
}
