int pantalla=1;
float x=300;
float incremento=2;
PFont laletra; 
PImage eldedo;
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


void setup(){
  size(800,600);
  laletra=loadFont("SnapITC-Regular-48.vlw");
  eldedo=loadImage("DEDO.png");
  CORREACASA=loadImage("CORREACASA.png");
  personaje=loadImage("PERSONAJE.png");
  DOSCASAS=loadImage("DOSCASAS.png");
  CENDEROPOSIBLE=loadImage("CENDEROPOSIBLE.jpg");   
  CENDEROLAGO=loadImage("CENDEROLAGO.jpg");
  PULGARABAJO=loadImage("PULGARABAJO.png");
  EQUIVOCADO=loadImage("EQUIVOCADO.png");
  CANSADO=loadImage("CANSADO.png");
  DORMIDO=loadImage("DORMIDO.png");
  CASAFIN=loadImage("CASAFIN.png");   
}

void draw(){
  
if(pantalla==1) {/*Esta es la pantalla de Inicio (Cielo - Pasto - Sol - Comenzar - Fuente - Imagen)*/
                 background (47,238,242);
                 fill(0,100,0); rect(0,height/2+100,width,height); 
                 fill(232,217,47); noStroke(); ellipse(100,100,120,120);
                 textFont(laletra);textAlign(CENTER);textSize(35);fill(14,132,193);
                 text ("JUAN SE PERDIÓ", width/2,170);
                 personaje.resize(120,120);image(personaje,330,280);
                 text ("AYÚDALO A REGRESAR A SU CASA",width/2,250);
                 eldedo.resize(80,80);image(eldedo,190,450);
                 fill (255);text("COMENZAR",width/2,500);
                 
                 fill(250,100);textSize(22);text("Presiona la tecla 'C' para comenzar de nuevo.", width/2,580);
                  
}else if(pantalla==2){ //El personaje puede decidir ir por la derecha o la izquierda. 
                background (47,238,242);
                fill(0,100,0); rect(0,height/2+100,width,height); 
                textFont(laletra);textAlign(CENTER);textSize(45);fill(14,132,193);
                text("Que camino debe escoger?",width/2,100);
                fill(0,random(155),90);rect(150,280,80,40); rect(600,280,80,40);
                triangle(10,300,150,250,150,350);triangle(790,300,650,250,650,350);
                fill(250,100);textSize(25);text("Presiona la tecla 'C' para comenzar de nuevo.", width/2,580);
                personaje.resize(310,250); image(personaje,240,150);
                
}else if(pantalla==3) { //DILEMA.EL PERSONAJE DEBE VOLVER A ELEGIR, HACIENDO CLICK EN UNA DE LAS CASAS. 
                textSize(20);fill(255); text("DOS OPCIONES A O B (3)",400,300);
                DOSCASAS.resize(width,height);image(DOSCASAS,0,0);
                
}else if(pantalla==4) {//JUAN CREE QUE ESTE ES UN CAMINO POSIBLE.
                CENDEROPOSIBLE.resize(width,height);image(CENDEROPOSIBLE,0,0);
                fill(255);textSize(40);
                text("Juan está confiado!",530,100);      
                text("ADELANTE!",540,140); 
                stroke(108,67,15);strokeWeight(5);noFill();rect(550,475,210,105);
                fill(108,67,15);textSize(16);text("CLICK AQUÍ",650,510);text("PARA CONTINUAR",650,550);  

}else if(pantalla==5) {//DEBE VOLVER A COMENZAR.PULGAR ABAJO.
                PULGARABAJO.resize(width,height);image(PULGARABAJO,0,0);
                textSize(22);text("Presiona la tecla 'C' para comenzar de nuevo.", width/2,580);            

}else if(pantalla==6) {//EL CAMINO DEL LAGO ES EL CORRECTO PARA SEGUIR.
                CENDEROLAGO.resize(width,height);image(CENDEROLAGO,0,0);
                stroke(9,90,9);strokeWeight(5);fill(247,238,212);rect(480,20,280,180);
                fill(9,90,9);textSize(18);text("El lago le indicaa Juan...",622,65);
                text("que éste es el camino",620,95); 
                text("a seguir",620,125);fill(66,220,33);
                text("CLICK AQUÍ",620,170);text("PARA CONTINUAR",620,190);


}else if(pantalla==7) {//Juan se dió cuenta que tomo el camino equivocado.
                EQUIVOCADO.resize(width,height);image(EQUIVOCADO,0,0);
                fill(255);textSize(30);text("Presiona la tecla 'C' para comenzar de nuevo.", width/2,580);

}else if(pantalla==8) {//Duerme en el árbol o sigue?
                CANSADO.resize(width,height);image(CANSADO,0,0); 
}
else if(pantalla==9) {//Se hizo de noche, Juan se durmió.
                DORMIDO.resize(width,height);image(DORMIDO,0,0); 
                fill(230,110);textSize(25);
                text("DEBES VOLVER",650,380);text("AL INICIO",670,480);
                fill(230,180,30);text("Presiona la letra 'C' para comenzar de nuevo...",370,580);

}else if(pantalla==10) {//Pantalla final....Llegó a la casa!
                background(40,180,90);
                fill(0,90,0);ellipse(random(width),random(height),50,50);
                CASAFIN.resize(600,400);image(CASAFIN,100,100);
                textSize(35);text("GRACIAS AMIGOSSS!!!",x,80);
                fill(255,120);textSize(22);text("Presiona la tecla 'C' para comenzar de nuevo.", width/2,580);
                x++;
                //Rebote del Gracias!
                x = x+incremento;
                if( x>500){
                incremento = -2; 
                }
                if( x<300){
                incremento = 2; 
                }}}
                
                
void mousePressed(){ 

if(pantalla==1){if (mouseX>width/2-150 && mouseX<width/2+150  && mouseY>450 && mouseY<550){pantalla=2;}}

else if(pantalla==2){if (mouseX>10 && mouseX<150 && mouseY>250 && mouseY<350){pantalla=3;}
                     if (mouseX>650 && mouseX<790 && mouseY>250 && mouseY<350){pantalla=4;}}

else if(pantalla==3){if (mouseX>0 && mouseX<200 && mouseY>250 && mouseY<400){pantalla=5;}
                     if (mouseX>600 && mouseX<800 && mouseY>250 && mouseY<400 ){pantalla=6;}}

else if(pantalla==4){if (mouseX>550 && mouseX<760 && mouseY>475 && mouseY<580){pantalla=7;}}

else if(pantalla==6){if (mouseX>490 && mouseX<750 && mouseY>20 && mouseY<200){pantalla=8;}}

else if(pantalla==8){if (mouseX>0 && mouseX<200 && mouseY>305 && mouseY<460){pantalla=10;}
                     if (mouseX>650 && mouseX<790 && mouseY>130 && mouseY<450){pantalla=9;}}}

void keyPressed(){
  
  if(pantalla==2){
    if( key == 'C' || key=='c'){
      pantalla=1;}}

 if(pantalla==3){
    if( key == 'C' || key=='c'){
      pantalla=1;}}
      
 if(pantalla==4){
    if( key == 'C' || key=='c'){
      pantalla=1;}}
      
      if(pantalla==5){
    if( key == 'C' || key=='c'){
      pantalla=1;}}
      
      if(pantalla==6){
    if( key == 'C' || key=='c'){
      pantalla=1;}}
      
      if(pantalla==7){
    if( key == 'C' || key=='c'){
      pantalla=1;}}
      
       if(pantalla==8){
    if( key == 'C' || key=='c'){
      pantalla=1;}}
      
       if(pantalla==9){
    if( key == 'C' || key=='c'){
      pantalla=1;}}
      
       if(pantalla==10){
    if( key == 'C' || key=='c'){
      pantalla=1;}}}
