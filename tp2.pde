//Micaela Vacherand 83664/1
//https://youtu.be/Y85JMDxEsbk
int ubicacion;
int cantidad =10;
void setup(){
 size (600, 600);
 ubicacion = width/cantidad;
}

void draw(){
 background (120, 40, 140);
  
 for (int i=0; i<cantidad; i++) {
 for (int c=0; c<cantidad; c++) {
     float distan = dist (mouseX, mouseY, i*ubicacion+ubicacion/2, c*ubicacion+ubicacion/2);
     float tam = map(distan, 0, dist(0,0,width,height), 60, 150);
     float tono = map (c, 0, cantidad-1, 50, 255);
     float azul = random (120, 255);
     float verde = random (90, 255);
     
   if ((i+c)%3==0) {
     fill (0, verde, azul, tono);}
   else {
      fill (170, 40, azul, tono);
      }

      stroke(40);
      ellipse (i*ubicacion+ubicacion/2, c*ubicacion+ubicacion/2, tam, tam);
    }    
  }
}




  
  
