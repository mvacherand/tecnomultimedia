//Micaela Vacherand 83664/1 com 2 
PFont letra;
PImage fondo1;
color amarillo;
int t; // transparencia
int posY,m,n,o,q,r,s,w,u,z,a;
int p= 0; //pantalla



void setup(){
  size(600, 600);
  color(255,243,10);
  smooth();

  letra= loadFont("LatinWide-48.vlw");
  textFont(letra);
  fondo1=loadImage("fondo1.jpg"); 
  amarillo= color(255,243,10);
  t= (255);
  posY = 600;
  m=700;
  n=800;
  o=820;
  q=900;
  r=1000;
  s=1150;
  w=1250;
  u=1340;
  z=1400;
  a=1500;
  
  
}
    
void draw(){
  
  image(fondo1, 0, 0, 600, 600);
  
  
  fill(amarillo, t);
  if(p < 12){
  t--;
  }
  textAlign(CENTER, CENTER);
  println(frameCount, frameCount/30);
  

 
  if(p == 0){
    textSize(35);
    text("STAR WARS III:", width/2, height/2 +15 );
    textSize(20);
     text("Revenge of the Sith", width/2, height/2 +54 );

  }else if (p ==1){
    textSize(20);
    text("Written and Directed by ", width/2, height/2);
    textSize(20);
    text("GEORGE LUCAS", width/2, height/2 + 40);
  
  
    }else if (p ==2){
    textSize(20);
    text("Produced by ", width/2, height/2);
    textSize(20);
    text("RICK McCALLUM", width/2, height/2 + 40);
    
    }else if (p ==3){
    textSize(20);
    text("Edited by ", width/2, height/2);
    textSize(20);
    text("ROGER BARTON", width/2, height/2 + 40);
    text("and", width/2, height/2 + 60);
    text("BEN BURTT", width/2, height/2 + 80);
  
  
    }else if(p==4){
    textSize(20);
    text("Music by", width/2, height/2);
    textSize(20);
    text("JOHN WILLIAMS", width/2, height/2 + 40);
  
  
     }else if(p==5){
    textSize(20);
    text("Starring", width/2, height/2);
    textSize(20);
    text("EWAN McGREGOR", width/2, height/2 + 40);
   
    }else if(p==6){
    textSize(20);
    text("NATALIE PORTMAN ", width/2, height/2 + 40);
    
     }else if(p==7){
    textSize(20);
    text("HAYDEN CHRISTENSEN ", width/2, height/2 + 40);
    
     }else if(p==8){
    textSize(20);
    text("IAN McDIARMID", width/2, height/2 + 40);
  
 
    }else if(p==9){
    textSize(20);
    text("Co-Starring", width/2, height/2);
    textSize(12);
    text( "JIMMY SMITS", width-455, height/2 + 40);
    text("OLIVER FORD DAVIES", width-195, height/2 + 40);

    }else if(p==10){
    textSize(20);
    text("PETER MAYHEW", width/2, height/2 + 40);
    
    }else if(p==11){
    textSize(20);
    text("Animation Director", width/2, height/2);
    textSize(20);
    text("ROB COLEMAN", width/2, height/2 + 40);
    }
    if (p==12) {
    textAlign(CENTER);
    textSize(12);
    text("First Assistant Director - Micaela Vacherand\nSecond Assistant Director - Matias Jauregui\n...\n..." , width/2,posY);
    text("Special Visual Effects and Animation by\nINDUSTRIAL LIGHT & MAGIC\nMarin County, California" , width/2,m);
    text("CAST", width/2,n);
    text("Obi Wan Kenobi - EWAN McGREGOR\nPadmé - NATALIE PORTMAN\nDarth Vader - HAYDEN CHRISTENSEN\nYoda - FRANK OZ\nC 3P0 - ANTHONY DANIELS" , width/2,o);
    text("Mace Windu - SAMUEL L. JACKSON\nSenator Bail Organa - JIMMY SMITS\nCount Dooku - CHRISTOPHER LEE\nGovernor Tarkin - WAYNE PYGRAM" , width/2,q);
    text("Post Production Sound Services Provided by\nSKYWALKER SOUND\nMarin County, California" , width/2,r);
    text("Visit the official website at\nWWW.STARWARS.COM" , width/2,s);
    textSize(10);
    text("The events, characters and firms depicted\nin this photoplay are fictitious. Any similarity to actual persons,\nliving or dear, or to actual events or firms is purely coincidental." , width/2,w);
   text("Ownership of this motion picture is protected\nby copyright and other applicable laws, and any unauthorized\nduplication, distribution or exhibition of this motion picture\ncould result in criminal prosecution as civil liability." , width/2,u);
   text("Copyright © 2005 Lucasfilm LTD. & TM. all rights reserved", width/2,z);
   text("Released by TWENTIETH CENTURY FOX FILM CORPORATION.", width/2,a);
    posY--; 
    m--;
    n--;
    o--;
    q--;
    r--;
    s--;
    w--;
    u--;
    z--;
    a--;
  }
    if (t <= 0){ 
    p++;
    t= 255;
 }
}
  
void keyPressed(){
    if(key == ' '){
     p= 0;
     t= 255;
    
         
    }
}
