

void estados() {
  if ( estado==0  ) {
    background(255, 130, 33);
    fill(rojo);
    textAlign(CENTER);
    textSize(50);
    text("Food Drop", width/2, 100);
    textSize(15);
    fill(rojo);
    rect(140, 380, 220, 50);
    fill(255);
    text("CLICK PARA JUGAR", width/2, 410);
    image(pouinicio, 170, 150, 150, 150);
  } else if (estado==1) {
    background(255, 130, 33);
    fill(247,127,173);
    rect(-1, 65, 600, 160);
    fill(0);
    textAlign(CENTER);
    textSize(16);
    text("Pou tiene hambre y quiere comer pizzas", width/2,100);
    text("Debe sumar 50 puntos para estar llenito",width/2, 150);
    text("Si se cae una pizza, perderá", width/2, 200);
    textSize(30);
    fill(0);
    text("¿Podrás ayudarlo?", width/2, 290);
    textSize(30);
    fill(247,127,173);
    rect(140, 380, 220, 50);
    fill(0);
    text("INICIAR",width/2, 418);
    image(pouinstrucciones, 0, 350, 150, 150);
  } else if (estado==2) {
    background(255, 130, 33);
    for (int i = 0; i < c; i++) {
      image(pizza, posicionesX[i], posicionesY[i], 80, 80);
      posicionesY[i]++;
      image(poucomiendo, m, 400, 100, 100);
      if (dist(posicionesX[i], posicionesY[i], m, 400)   < 50 ) {
        if (frameCount%6 == 0) {
          puntos++;
          posicionesY[i] = -100;
        }
      }
      if (posicionesY[i]>height) {
        estado = 4;
      }
    }
    if (puntos>=50) {
      estado=3;
    }
    fill(0);
    textAlign(CENTER);
    textSize(20);
    text("Puntos:", 70, 30);
    text(puntos, 60, 50);
  }
  if ( estado==3) {
    background(255, 130, 33);
    fill(255,234,70);
    textAlign(CENTER);
    textSize(30);
    text("Sii!!\n LO LOGRASTE", width/2,90);
    //fill(0);
    textSize(20);
    text("Presiona ENTER\n para volver a jugar", width/2, 180);    
    image(pouinicio, 180, 250, 130, 130);
    textSize(12);
    text("Creado por\nMicaela Vacherand", width/2, 400);
    text("Tecnología Multimedial 1", width/2, 450); 
   text("Comisión 2- Matias Jauregui Lorda", width/2, 480);
  } else if (estado==4) {
    background(rojo);
    fill(0);
    textAlign(CENTER);
    textSize(30);
    text("OH NO!!\nPERDISTE :(", width/2,90);
    textSize(20);
    text("Presiona ENTER\n para volver a intentarlo", width/2, 180);
    image(poutriste,180, 250, 130, 130);
    textSize(12);
    text("Creado por\nMicaela Vacherand", width/2, 400);
    text("Tecnología Multimedial 1", width/2, 450); 
   text("Comisión 2- Matias Jauregui Lorda", width/2, 480);
  }
}
boolean jugar(int x, int y, int ancho, int alto) {
  boolean click= mouseX>x && mouseX<x+ancho && mouseY>y && mouseY<y+alto;
  return click;
}
boolean iniciar(int x, int y, int ancho, int alto) {
  boolean iniciando= mouseX>x && mouseX<x+ancho && mouseY>y && mouseY<y+alto;
  return iniciando;
}
void iniciar() {
  if ( estado==0 && jugar(145, 380, 220, 50) ) {
    estado=1;
  } else if (estado==1 && iniciar(140, 380, 220, 50)) {
    estado=2;
  }
}
void reiniciar() {
  if ( key==ENTER ) {
    estado=0;
    puntos=0;
    for (int i = 0; i < c; i++  ) {
      posicionesX[i] = random(0, width-100);
    }
    for (int i = 0; i < c; i++  ) {
      posicionesY[i] = random(-600, 0);
    }
  }
}
