class Escenario {    /*agrupar elementos*/
  ArrayList<PVector> blocks = new ArrayList<PVector>();                    /*arreglos: variable con mas de un dato*/
  ArrayList<Integer> colorBlock = new ArrayList<Integer>();                /*arraylist almacena un n° variable de objetos*/
 
  int ancho, alto, col, fil, dif, aux;
  color[] colores = new color[5];
  
  Escenario(int nivel) { /*parametro el nivel actual del juego*/
    col = 5 * nivel; /*el grado de dificultad sube, el número de las columnas y filas se multiplica por el nivel actual*/
    fil = 5 * nivel; 
    dif = 50; //El espaciado e/ los bloques y las paredes
    ancho = (width - dif * 2)/col; //Ancho de cada bloque
    alto = 20; //Alto de cada bloque
            /*arreglos*/
    colores[0] = color(255,0,0); //rojo
    colores[1] = color(0,0,255);//azul
    colores[2] = color(197,0,252); //violeta
    colores[3] = color(0,255,0); //verde
    colores[4] = color(255,224,0); //amarillo
  }
  void crearEscenario() {                            /*utilice el ciclo for para crear los bloques, junto con add para sumar los componentes al vector*/
    for(int i = 0; i < fil; i++) {
      for(int j = dif; j <= width - dif - ancho; j+= ancho) {
        blocks.add(new PVector(j, (alto*i) + dif)); /* add: agregar*/
      }
    }
    asignarColor();
  }
  void asignarColor() {       /*de esta forma le asigno color a cada bloque*/
    int aux = 0;
    for(int i = 0; i < fil; i++) {
      for(int j = 0; j < col; j++) {
        colorBlock.add(colores[aux]);   /* a cada fila le asigne un color*/
      }
      aux++; /*El color cambia para la siguiente fila*/     
      if(aux > 4) {    /*como hay 4 colores y al pasar a los siguientes niveles hay mas de 4 filas, cada vez que llegue al último color volverá a empezar x el primero-rojo-*/
        aux = 0;       /*de esta forma logré un patrón repetitivo de colores*/
      }
    }
  }
  void mostrar() {   /* de esta forma se dibujan los bloques en la pantalla*/
    stroke(0);
    strokeWeight(2);
    for(int i = 0; i < blocks.size(); i++) {
      PVector block = blocks.get(i);
      int colorBlock = this.colorBlock.get(i); /* this: hace referencia al objeto actual*/
      fill(colorBlock);
      rect(block.x, block.y, ancho, alto);
    }
  }
  int getAncho() {
    return ancho;
  }
  int getAlto() {
    return alto;
  }
  ArrayList<PVector> getBlocks() {
    return blocks;
  }
  ArrayList<Integer> getColores() {
    return colorBlock;
  }
  int getNumBlocks() {
    return blocks.size();
  } 
}
