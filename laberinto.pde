class laberinto{
  //declaro variables
  int x,y, tam;
  PImage lab, titulo;
  color azul;  
  
  //constructor
  laberinto(){
     x=200;
     y=0;
     tam=1200;
     azul= color (0,21,128);
     lab=loadImage("lab.png");
     titulo=loadImage("titulo.png");
   }
  void dibujar(){
    image(lab,x,y,tam/2,tam/2);
    image(titulo,30,20,130,80);
    //dibujo parte de laberinto extra
    fill(azul);
    noStroke();
    rect(0,562,100,10);
    rect(100,472,10,127);
    rect(100,589,260,10);
    rect(1,376,202,10);
    rect(250,550,110,10);
    rect(180,380,10,140);
    rect(250,450,10,100);
    rect(685,110,120,10);
    rect(685,120,10,60);
    //
    //instrucciones
    fill(147,194,234);
    rect(3,120,195,252);
    fill(0);
    textSize(20);
    text("Hey!", 20,150);
    textSize(12);
    text("¿Puedes ayudar al\n marcianito a que llegue\n con sus hermanos?",20,170);
    text("Utiliza las teclas\nRIGHT-LEFT-UP-DOWN\npara desplazarte por\nel laberinto.", 20,225);
    text("Ten cuidado!\nEsquiva las garras !!",20, 290);
    textSize(9);
    text("Creado por Micaela Vacherand",30,343);
    text("Tecnología Multimedial 1",40,357);
    text("Comisión 2- Matias Jauregui Lorda",25,370);

    
  }  
}
