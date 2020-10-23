/*
Analia V. Rebollo F.
Comisión 3 - Prof. David.
Este es mi Mini Juego, asociado a la Aventura de:
"Juan quiere llegar a casa" 
La Pantalla que voy a reemplazar, será la Nro. 9, donde él se quedaba dormido.
*/

Juego juego;
import ddf.minim.*;
Minim minim;
AudioPlayer MUSICA;

void setup(){
  size(800,600);
  surface.setResizable(true);
  
  minim= new Minim(this);
  MUSICA=minim.loadFile("musica.mp3");
  MUSICA.loop();
 
  juego = new Juego();

}

void draw(){
juego.dibujar();
  
  
}


void keyPressed(){
  
juego.teclaPresionada();
  
}

float granX (float valor){
  return map(valor,0,800,0,width);
}

float granY (float valor){
  return map(valor,0,600,0,height);
}
