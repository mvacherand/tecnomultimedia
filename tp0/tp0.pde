void setup(){
  size(600,600);
  background(35,193,219);
  noStroke();
  //sol
  fill(255,247,0); 
  circle(300,85,80);
  // nubes izq
  fill(255);
  circle(60,150,40);
  circle(100,140,60);
  circle(150,130,60);
  circle(190,140,40);
  fill(35,193,219);
  rect(40,145,180,30);
  //nubes derecha
  fill(255);
  circle(400,150,40);
  circle(445,140,60);
  circle(500,130,60);
  circle(545,140,40);
  fill(35,193,219);
  rect(380,145,190,30);
  //montañas atras
   fill(110);
   triangle(0,160,0,400,170,400);
   triangle(225,250,115,400,300,400);
   triangle(480,190,350,400,550,400);
   fill(230);
   triangle(0,160,0,200,30,200);
   triangle(225,250,188,300,250,300);
   triangle(480,190,455,230,494,230);
   //montañas adelante
   fill(130);
   triangle(0,400,115,150,225,400);
   triangle(225,400,340,140,450,400);
   triangle(450,400,570,100,700,400);
   fill(230);
   triangle(115,150,92,200,138,200);
   triangle(340,140,313,200,366,200);
   triangle(570,100,550,150,592,150);
   //pasto
   fill(55,134,50);
   ellipse(500,500,400,250);
   ellipse(0,500,550,250);
   fill(0,255,0);
   ellipse(300,600,600,450);
   
   //arbol
   fill(43,173,24);
   triangle(470,370,520,460,420,460);
   triangle(420,400,520,400,470,300);
   triangle(600,200,520,380,600,380);
   triangle(600,270,520,470,600,470);
   fill(47,188,46);
   triangle(0,350,50,300,100,350);
   triangle(0,320,50,250,100,320);
   fill(118,58,8);
   rect(470,460,8,50);
   rect(570,468,40,140);
   rect(45,350,10,40);
   
   
   //olaf
   fill(240);
   circle(300,397,70);
   circle(300,440,80);
   ellipse(300,442,78,100);
   ellipse(300,505,80,60);
   ellipse(300,550,100,80);
   fill(255);
   stroke(100);
   ellipse(290,390,15,20);
   ellipse(315,390,15,20);
   fill(0);
   circle(292,390,10);
   circle(317,390,10);
   noStroke();
   fill(180);
   ellipse(300,440,58,75);
   fill(240);
   rect(268,415,63,20);
   rect(280,402,50,30);
   fill(255,118,5);
   triangle(300,425,300,408,360,430);
   fill(255);
   rect(287,435,30,15);
   fill(0);
   circle(300,505,15);
   circle(300,555,15);
   circle(300,530,15);
   fill(118,58,8);
   rect(300,336,5,30);
   rect(290,340,5,30);
   rect(310,340,5,30);
   rect(240,505,20,5);
   rect(340,505,20,5);
   
   fill(255);
   ellipse(185,410,130,70);
   triangle(260,430,170,430,230,385);
   fill(0);
  text("Hola, soy Olaf,", 150,400);
  text("y tengo mucho calor", 130,418);
 
  
}
void draw(){
}
