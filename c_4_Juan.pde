class Juan {
  int posY, posX;
  int tam;
  PImage Juan;
  Juan(int size, int posicionX, int posicionY) {
    posX = posicionX;
    posY = posicionY; 
    tam = size;  
    Juan = loadImage("Juan.png");
  }


  void dibujar() {
    
    image(Juan, posX, posY, granX(tam), granY(tam));
  }
  boolean colision(Oveja oveja) {

    if (dist(posX, posY, oveja.posX, oveja.posY) <= tam) {
      return true;
    }
    return false;
  }
  void teclaPresionada() {
   
    if (keyCode == UP) {
      posY = posY - 5;
    } else if (keyCode == DOWN) {
      posY = posY  + 5;
    } else if (keyCode == LEFT) {
      posX = posX  - 5;
    } else if (keyCode == RIGHT) {
      posX = posX  + 5; 
    }
}
  
  
}
