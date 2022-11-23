class Juego { // clase principal donde declaro todas las clases (objetos) para armar el juego

  //Propiedades
  int puntos = 0;
  int marcaDeTiempo = 0;  //marca de tiempo para que no cuente el tiempo que paso el jugador en el menu
  int tiempo = 20 * 1000;  //cantidad de segundos
  int cantObstaculos;
  int vida;
  int estado = 0;
  PImage vidas, instrucciones;
 
 //decalro las instancias de mis clases(objetos)
  Fondo fondo0, fondo1, fondo2, fondo3, fondo4;
  Personaje personaje;
  Boton boton1, boton2, boton3, boton4, boton5, boton6;
  Obstaculo[] obstaculos; //creo un arreglo de bola (obstaculo)

  ///constructor///
  Juego() {
     //inicializo los objetos, llamo a los constructores
    //Botones
    boton1 = new Boton ("JUGAR", width/2, 450, 300, 100, 30);
    boton2 = new Boton ("CRÉDITOS", 60, 30, 90, 50, 15);
    boton3 = new Boton ("SIGUIENTE", 728, 30, 90, 50, 18);
    boton4 = new Boton ("VOLVER A JUGAR", width/2, 500, 300, 100, 45);
    boton5 = new Boton ("VOLVER A JUGAR", width/2, 500, 300, 100, 45);
    boton6 = new Boton ("SIGUIENTE", 728, 30, 90, 50, 18);

    //fondo
    fondo0 = new Fondo("fondo_0", width, height, 0, 0);
    fondo1 = new Fondo("fondo_1", width, height, 0, 0);
    fondo2 = new Fondo("fondo_0", " TRABAJO FINAL \n Creado por: \n Micaela Vacherand \n\n Tecno Multimedia", 255, CENTER, width/2, 200, 0, 0);
    fondo3 = new Fondo("fondo_2", width, height, 0, 0);
    fondo4 = new Fondo("fondo_3", width, height, 0, 0);

    //Obstaculos
    cantObstaculos = 5;
    obstaculos = new Obstaculo[cantObstaculos];   // arreglo para los obstáculos
    for (int i = 0; i < cantObstaculos; i++) {
      obstaculos[i] = new Obstaculo();
    }

    //Personaje
    personaje = new Personaje(150, 550);
    vida=5;
    //vidas=loadImage("vidas.png");
    instrucciones=loadImage("instrucciones.png");
  }


  //Metodos
  void dibujar() {
    

    switch(estado) {
    case 0:
      fondo0.dibujarPantalla();
      image(instrucciones,300, 180, 195, 220);
      boton1.actualizar();
      boton2.actualizar();
      
      if (!player1.isPlaying()) 
      {
        player1.setGain(-10);// le baje el volumen a la canción de fondo
      }
      //image(instrucciones,300, 180, 195, 220);
      break;
    case 1:                            // en el caso/ estado 1 se dibuja el fondo escenario, el personaje, los obstáculos, aparece el tiempo 
      background(0);
      fondo1.dibujarPantalla();
      float t = map( millis(), marcaDeTiempo, marcaDeTiempo+tiempo, 0, 400);  //tamaño del cuadrado de tiempo
      fill( #CBF514 );
      noStroke();
      rect( 0, 0, t, 20 );
      
      //image( vidas, 10, 25, 100, 30);
      //text("vidas: ", 10,40,20,50);
      

      for (int i = 0; i<cantObstaculos; i++) {
        obstaculos[i].dibujarObstaculo(8);
        
        
      }

      personaje.dibujar();
      personaje.accionar();

      for (int i = 0; i<cantObstaculos; i++) {
        //print("obstaculo " + i + " " + "tipo " + obstaculos[i].getTipo() + " " );
        if (hayColision(obstaculos[i].getX(), obstaculos[i].getY(),
          obstaculos[i].getAlto(), obstaculos[i].getAncho())) {
          obstaculos[i]=new Obstaculo();
          personaje.quitarVida();
          chocar.play(3);
          if (personaje.getcantVidas() == 0) { // si el personaje ya no tiene vidas (pierde) y se carga estado 3 (fondo perdiste)
            estado = 3;
            fondo3.dibujarPantalla();
          }
        }
      }
      break;
    case 2:  // en caso/ estado 2 se dibuja fondo créditos y boton siguiente 
      fondo2.dibujarPantallaCredito();
      boton3.actualizar();
      resetearJuego();
      break;
      
    case 3:   //  en el caso/ estado 3 se dibuja fondo perdiste y boton volver a jugar (reiniciar el juego)
      fondo3.dibujarPantalla();
      boton4.actualizar();
      resetearJuego();
      perder.play();
      break;
      
    case 4:  // en caso/ estado 4 se dibuja fondo ganaste, boton volver a jugar y boton siguiente (se reinicia el jeugp)
      fondo4.dibujarPantalla();
      boton5.actualizar();
      boton6.actualizar();
      ganar.play();
      resetearJuego();
      break;
    default:
     // println("no se encontro pantalla");
      break;
    }
  }

  void click() {
    switch(estado) {
    case 0:
     // println(estado = 0);
      if (boton1.mouseEstaEncima()) {
        estado = 1;
      } else if (boton2.mouseEstaEncima()) {
        estado = 2;
      }
      break;
    case 1:
     // println(estado = 1);

      fondo1.dibujarPantalla();


      personaje.dibujar();
      personaje.accionar();

      break;
    case 2:
     // println(estado = 2);
      if (boton3.mouseEstaEncima()) {
        estado = 0;
      }
      break;
    case 3:
      //println(estado = 3);
      if (boton4.mouseEstaEncima()) {
        estado = 0;
      }
      break;
    case 4:
      //println(estado = 4);
      if (boton5.mouseEstaEncima()) {
        estado = 0;
      } else if (boton6.mouseEstaEncima()) {
        estado = 2;
      }
    default:
      //println("no se encontro pantalla");
      break;
    }
  }

  void keyPressed() {               // detecta cuando el persoanje salta 
    if (key == ' ') {
      personaje.setSaltar(true);
      personaje.quitarSalto();
      if (personaje.getcantDeSaltos() == 0) {   // si el personaje ya no tiene saltos entonces pasa al estado 4 (fondo ganaste, boton volver a jugar y boton siguiente (se reinicia el jeugp)
        estado = 4;
        resetearJuego();
      }
    }
  }


  boolean hayColision(float x_obs, float y_obs, float alt_obs, float anc_obs) {
    float d = dist(x_obs, y_obs, personaje.getX(), personaje.getY());
    float xPer=personaje.getX();
    float yPer=personaje.getY();
    float altoPer=personaje.getAlto();
    float anchoPer=personaje.getAncho();
    // println(d);
    if ((xPer - anchoPer/3 < x_obs + anc_obs/3) &&
      (xPer + anchoPer/3 > x_obs - anc_obs/3) &&
      (yPer - altoPer/3 < y_obs + alt_obs/3)&&
      (yPer + altoPer/3 > y_obs - alt_obs/3)) {
      //colisiona
      //println("colision");
      return true;
    } else {
      return false;
    }
  }

  void resetearJuego() {
    personaje = new Personaje(150, 550);
    for (int i = 0; i < cantObstaculos; i++) {
      obstaculos[i] = new Obstaculo();
      marcaDeTiempo = millis();  
    }
  }
  
  
  
}
