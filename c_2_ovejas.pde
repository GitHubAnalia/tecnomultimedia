class Oveja {
  
  int cantOvejas = 10;
  int posX, posY, tam;
  float vel;
  PImage Ovejita;
  
  
  Oveja(int posicionX, int posicionY, int size) {
    posX = posicionX;
    posY = posicionY;
    tam = size;
    vel = 12;
    Ovejita= loadImage("Ovejita.png");
    
  }
  void dibujar() {

    image(Ovejita,posX,posY,granX(tam*3),granY(tam*2));
    //fill(200);
   //ellipse(posX, posY, tam, tam);
   posX-= vel;
  }
  void acomodar(int posicion){
    posX = posicion;
     
   }
}
