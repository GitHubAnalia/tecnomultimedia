class Reloj {
  int reloj, posX, posY;
  PImage Zzz;
  PImage Reloj;
  PFont laFuente;

  Reloj(int X, int Y) {
    reloj = 3;
    posX = X;
    posY = Y;
    Zzz = loadImage("Zzz.png");
    Reloj = loadImage("Reloj.png");
    laFuente= loadFont("BerlinSansFBDemi-Bold-48.vlw");
  }

  void dibujar() {

    image(Reloj, granX(600),granY(120),granX(120),granY(120));
    fill(#15D8E8);
    textSize(30); textFont(laFuente);
    text("Despierta Juan! " + reloj, granX(width/2), granY(height-470));
    
    if (reloj==1){
    textSize(45);
    text("Perdiste",granX(width/2),granY(height/3));
     }
  }
  void sigoDurmiendo() {
    reloj--; 
    if (reloj == 0) {
      textSize(100);
      image(Zzz,0,0,granX(400),granY(400));
      if (reloj == 0) {
        reloj = 3;
       
      }}}}
