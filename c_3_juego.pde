class Juego {
  PImage Cielo;
  int tam = height/10;
  Juan juan;
  Oveja [] posOveja = new Oveja [30];
Reloj reloj;
  Juego() {
    for (int i = 0; i < 30; i ++) {
      posOveja[i] = new Oveja(i*tam, round(random(-700, height)), 20);
      loop();
    }   

    juan = new Juan(100, 150, 520);
    reloj = new Reloj(25, 30);
  }

  void dibujar() {
    Cielo = loadImage("Cielo.png");
    image(Cielo, 0, 0, width, height);
    for (int i = 0; i < 30; i ++) {
      posOveja[i].dibujar();
      if (juan.colision(posOveja[i])) {
        posOveja[i].acomodar(round(random(-700, height)));
        reloj.sigoDurmiendo();
      }
    }

        juan.dibujar();
        reloj.dibujar();
  }
    

    void teclaPresionada() {
      juan.teclaPresionada();
    }
  }
  
