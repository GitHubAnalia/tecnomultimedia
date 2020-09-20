int    pantalla=1;
float  x1=300;
float  INCREMENTO=2;
PFont  LALETRA; 
PImage ELDEDO;
PImage CORREACASA;
PImage personaje;
PImage DOSCASAS;
PImage CENDEROPOSIBLE;
PImage CENDEROLAGO;
PImage PULGARABAJO;
PImage EQUIVOCADO;
PImage CANSADO;
PImage DORMIDO;
PImage CASAFIN;

import ddf.minim.*;
Minim minim;
AudioPlayer MUSICA;

float[] x;
float[] y;
float[] tam;


void setup(){
  size(800,600);
  surface.setResizable(true);
  LALETRA=        loadFont("SnapITC-Regular-48.vlw");
  ELDEDO=         loadImage("DEDO.png");
  CORREACASA=     loadImage("CORREACASA.png");
  personaje=      loadImage("PERSONAJE.png");
  DOSCASAS=       loadImage("DOSCASAS.png");
  CENDEROPOSIBLE= loadImage("CENDEROPOSIBLE.jpg");   
  CENDEROLAGO=    loadImage("CENDEROLAGO.jpg");
  PULGARABAJO=    loadImage("PULGARABAJO.png");
  EQUIVOCADO=     loadImage("EQUIVOCADO.png");
  CANSADO=        loadImage("CANSADO.png");
  DORMIDO=        loadImage("DORMIDO.png");
  CASAFIN=        loadImage("CASAFIN.png");   
  
  minim= new Minim(this);
  MUSICA=minim.loadFile("musica.mp3");
  MUSICA.loop();
  
  tam=   new float[100];
  x=     new float[100];
  y=     new float[100];
         for(int i=0;i<100;i++){
         tam[i]= random(10,50);
         y[i]=  map(tam[i],30, 10, 1, 3);}
  
  
}

void draw(){
  
if(pantalla==1) {/*Esta es la pantalla de Inicio (Cielo - Pasto - Sol - Comenzar - Fuente - Imagen)*/
                 background (47,238,242);
                 fill(0,100,0); rect(0,height/2+100,width,height); 
                 fill(232,217,47); noStroke(); 
                 ellipse(escX(95),escY(100),escX(120),escY(120));
                 textFont(LALETRA);textAlign(CENTER);textSize(escX(23));fill(14,132,193);
                 text ("JUAN SE PERDIÓ", escX(410),escY(170));
                 //personaje.resize(120,120);
                 image(personaje,escX(330),escY(280),escX(150),escY(150));
                 text ("AYÚDALO A REGRESAR A SU CASA",escX(400),escY(250));
                 //ELDEDO.resize(80,80);
                 image(ELDEDO,escX(190),escY(450),escX(50),escY(50));
                 fill (255);textSize(escX(35));text("COMENZAR",escX(400),escY(500));
                 
                 fill(250,100);textSize(escX(22));text("Presiona la tecla 'C' para comenzar de nuevo.", escX(400),escY(580));
                  
}else if(pantalla==2){ //El personaje puede decidir ir por la derecha o la izquierda. (Flechas)
                background (47,238,242);
                fill(0,100,0); rect(escX(0),escY(600/2+100),escX(width),escY(height)); 
                textFont(LALETRA);textAlign(CENTER);textSize(escX(45));fill(14,132,193);
                text("Que camino debe escoger?",escX(400),escY(100));
                fill(0,random(155),90);rect(escX(150),escY(280),escX(80),escY(40)); rect(escX(600),escY(280),escX(80),escY(40));
                triangle(escX(10),escY(300),escX(150),escY(250),escX(150),escY(350));triangle(escX(790),escY(300),escX(650),escY(250),escX(650),escY(350));
                fill(250,100);textSize(escX(22));text("Presiona la tecla 'C' para comenzar de nuevo.", escX(400),escY(580));
                //personaje.resize(310,250);
                image(personaje,escX(300),escY(200),escX(200),escY(200));
                
}else if(pantalla==3) { //DILEMA.EL PERSONAJE DEBE VOLVER A ELEGIR, HACIENDO CLICK EN UNA DE LAS CASAS. (Roja o azul)
                //textSize(20);fill(255); text("DOS OPCIONES A O B (3)",400,300);
                //DOSCASAS.resize(width,height);
                image(DOSCASAS,0,0,escX(800),escY(600));
                
}else if(pantalla==4) {//JUAN CONFIADO, CREE QUE ESTE ES UN CAMINO POSIBLE A SEGUIR.
                //CENDEROPOSIBLE.resize(width,height);
                image(CENDEROPOSIBLE,escX(0),escY(0),escX(800),escY(600));
                fill(255);textSize (escX(40));
                text("Juan está confiado!",escX(530),escY(100));      
                text("ADELANTE!",escX(540),escY(150)); 
                stroke(108,67,15);strokeWeight(escX(5));noFill();rect(escX(550),escY(475),escX(210),escY(105));
                fill(108,67,15);textSize(escX(16));text("CLICK AQUÍ",escX(650),escY(510));text("PARA CONTINUAR",escX(650),escY(550));  
                                
}else if(pantalla==5) {//DEBE VOLVER A COMENZAR.PULGAR ABAJO.
                PULGARABAJO.resize(width,height);image(PULGARABAJO,0,0);
                fill(250,100);textSize(escX(22));text("Presiona la tecla 'C' para comenzar de nuevo.", escX(400),escY(580));
                //Funcion Tachado!
                TACHAR((60),escX(25),escX(290),escY(200),escX(200));

}else if(pantalla==6) {//EL CAMINO AMARILLO DEL LAGO ES EL CORRECTO PARA SEGUIR.
                //CENDEROLAGO.resize(width,height);
                image(CENDEROLAGO,0,0,escX(800),escY(600));
                stroke(9,90,9);strokeWeight(escX(5));fill(247,238,212);rect(escX(480),escY(20),escX(280),escY(180));
                fill(9,90,9);textSize(escX(18));text("El lago le indica Juan...",escX(622),escY(65));
                text("que éste es el camino",escX(620),escY(95)); 
                text("a seguir",escX(620),escY(125));fill(66,220,33);
                text("CLICK AQUÍ",escX(620),escY(170));text("PARA CONTINUAR",escX(620),escY(190));


}else if(pantalla==7) {//Juan se dió cuenta que tomo el camino equivocado.
                //EQUIVOCADO.resize(width,height);
                image(EQUIVOCADO,escX(0),escY(0),escX(800),escY(600));
                fill(255);textSize(escX(30));text("Presiona la tecla 'C' para comenzar de nuevo.", escX(400),escY(580));
                //Funcion Tachado!!!
                TACHAR(60,escX(20),escX(580),escY(380),escY(150));

}else if(pantalla==8) {//Duerme en el árbol o sigue? (Juan esta cansado)
                //CANSADO.resize(width,height);
                image(CANSADO,0,0,escX(800),escY(600)); 
}
else if(pantalla==9) {//Se hizo de noche, Juan se durmió.
                //DORMIDO.resize(width,height);
                image(DORMIDO,escX(0),escY(0),escX(800),escY(600)); 
                fill(230,110);textSize(escX(25));
                text("DEBES VOLVER",escX(650),escY(380));text("AL INICIO",escX(670),escY(480));
                fill(250,100);textSize(escX(22));text("Presiona la tecla 'C' para comenzar de nuevo.", escX(400),escY(580));
                //Funcion Tachado!!!
                TACHAR((60),escX(20),escX(250),escY(330),escY(200));

}else if(pantalla==10) {//Pantalla final....Llegó a la casa!
                 background(0,255,0);
                 for(int i=0;i<100;i++){
                 float colores= map(tam[i], 10,30,50,250);
                 fill(0,colores,0);
                 ellipse(x[i], i*(escX(800/100)),tam[i],tam[i]);
                 x[i] += y[i];
                 if( x[i]>width){
                 x[i] = -tam[i];
                 }}
                
                image(CASAFIN,escX(250),escY(200),escX(350),escY(300));
                stroke(0);fill(40,155,90);
                textSize(escX(55));text("GRACIAS AMIGOSSS!!!",escX(x1),escY(80));
                fill(255);textSize(escX(30));text("Presiona la tecla 'C' para comenzar de nuevo.", escX(400),escY(580));
                x1++;
                //Rebote del Gracias!
                x1 = x1+INCREMENTO;
                if( x1>escX(500)){
                INCREMENTO = -escX(2); 
                }
                if( x1<escX(300)){
                INCREMENTO = escX(2); 
                
                }}
                }
                
                
                
void mousePressed(){ 

if       (pantalla==1){ if (mouseX>escX(400-150) && mouseX<escX(400+150)  && mouseY>escY(450+20) && mouseY<escY(550-40)){pantalla=2;}}

else if  (pantalla==2){ if (mouseX>escX(10) && mouseX<escX(150) && mouseY>escY(250) && mouseY<escY(350)  ) {pantalla=3; }
                        if (mouseX>escX(650) && mouseX<escX(790) && mouseY>escY(250) && mouseY<escY(350) ) {pantalla=4; }}

else if  (pantalla==3){ if (mouseX>escX(90) && mouseX<escX(200) && mouseY>escY(250) && mouseY<escY(400))    {pantalla=5; }
                        if (mouseX>escX(600) && mouseX<escX(800) && mouseY>escY(250) && mouseY<escY(400) ) {pantalla=6; }}

else if  (pantalla==4){ if (mouseX>escX(550) && mouseX<escX(760) && mouseY>escY(475) && mouseY<escY(580) ) {pantalla=7; }}

else if  (pantalla==6){ if (mouseX>escX(490) && mouseX<escX(750) && mouseY>escY(20) && mouseY<escY(200)  ) {pantalla=8; }}

else if  (pantalla==8){ if (mouseX>escX(0) && mouseX<escX(200) && mouseY>escY(305) && mouseY<escY(460)   ) {pantalla=10;}
                        if (mouseX>escX(650) && mouseX<escX(790) && mouseY>escY(130) && mouseY<escY(450) ) {pantalla=9; }}}

void keyPressed(){
  
  if ( key == 'C' || key=='c')
          {pantalla=1;}}

      
   //Funcion para: Dibujar una cruz en la pantalla, cuando ésta no sea la indicada para seguir.    
   void TACHAR(float black, float grosor, float x, float y, float size) {
     
        stroke(black);
        strokeWeight(grosor);
        line(x,y,x+size,y+size);
        line(x+size,y,x,y+size);
   }
   
   //  Funcion para proporcionar los elementos de pantalla.
   
        float escX (float valor_){
        return map(valor_, 0,800,0,width);}
              
        
        float escY (float valor_){
        return map(valor_,0,600,0,height);}
        
   
   
