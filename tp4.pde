//Micaela Vacherand 83664/1
// Tecno Multimedia - com 2
//https://youtu.be/Daaysi0vBk0

//creo instancia juego
juego juego;


void setup (){
 size(800,600);
 //inicializo llamando al constructor
 juego= new juego ();
 
}
void draw(){
  background(218,194,254);
  //actualizo llamando al método
   juego.actualizar();
  //dibujo llamando al método
  juego.dibujar();
 //juego.reiniciar();   
}
