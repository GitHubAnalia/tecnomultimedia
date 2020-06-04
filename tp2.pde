PFont  lafuente;
PFont  laotrafuente;
PImage laimagen;
PImage laimagen2;

int y; 
int tam;
int tam2;

void setup(){
  
  size(600,600);
  lafuente=loadFont("ArialMT-48.vlw");
  laotrafuente=loadFont("ImprintMT-Shadow-48.vlw");
  laimagen=loadImage("PERSONAJE.jpg");
  laimagen2=loadImage("AZUL.jpg");
  y= 600;
  tam=300;
  tam2=-50;
}


void draw(){
    println(y);
    //Espacio.
    background(0);
    fill(random(255));
    ellipse(random(width),random(height),15,15);
    
   //Personaje.  
    laimagen2.resize(150,150);
    image(laimagen,width/2,y+200,tam2,tam2);
    tam2++;
    
    //Star Wars.
    fill(120,89,0);
    textAlign(CENTER);
    textFont(laotrafuente);
    textSize(tam);
    text("STAR WARS",300,y-100);
    tam--;
  
    //CAST
    fill(10,100,120);
    textAlign(CENTER);
    textSize(20);
    fill(255);
    textFont(lafuente);
    text("CAST",width/2,y+400);
    
    //Letras celestes
    fill(62,109,157);
    textAlign(LEFT);
    textSize(20);
    text("PALPATINE",100,y+450);
    text("Ian McDiarmind ",300,y+450);
    text("DARTH VADER",100,y+500);
    text("Hayden Christensen",300,y+500);
    text("LUKE SKYWALKER",100,y+550);
    text("Mark Hamill",300,y+550);
    text("REY",100,y+600);
    text("Daisy Ridley",300,y+600);
    text("YODA",100,y+650);
    text("Frank Oz",300,y+650);
    text("CHEWBACCA",100,y+700);
    text("Peter Mayhew",300,y+700);
    text("HAN SOLO",100,y+750);
    text("Harrison Ford",300,y+750);
    
   
    fill(62,109,157);
    textSize(30);
    textAlign(CENTER);
    text("Direction", width/2,y+1350);
    text("GEORGE LUCAS", width/2,y+1400); 
    text("Musicalization",width/2,y+2000);
    text("JOHN TOWNER WILLIAMS",width/2,y+2050);

    //Final.
    //laimagen2.resize();
    image(laimagen2,235,y+2600);
    
    y=y-2;
  
}
    
    
