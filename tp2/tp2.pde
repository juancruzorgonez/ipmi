PImage silenthr; 
PImage silenthr22;
PImage silencio;
PFont mitexto;
PFont mitexto2;
String info1 = "es un videojuego de terror y supervivencia de disparos en tercera persona\nEs una nueva versión del videojuego de 2001, Silent Hill 2\n cuya historia fue impactante y con un transfondo tan oscuro y complejo,\n que sus fanaticos quedaron asombrados ";
String info2 = "silent hill 2\n te cuenta la historia james sunderland\n un hombre viudo hace 2 años que esta en el pueblo de silent hill buscando \n a su esposa ya que recibio una carta PROVENIENTE\n de ella diciendo que esta en el pueblo";
String info3 ="Mientras explora el pueblo en busca de respuestas james\nse va enfrentando a los peligros que hay alli, y a la verdad que le espera";
color B = (#790404);
int posYinfo1 = width/2;
int posYinfo2= width/2;
int posYinfo3 =width/2;
int a= 300;
String ventana;
int V;





void setup(){
size(640,480); 
background(127);
textAlign( width/2, width/2 );
////-----------
 mitexto2=loadFont("Harrington-48.vlw");
mitexto=loadFont("Chiller-Regular-48.vlw");
//---------------
silenthr = loadImage("silenthr.jpg");
image(silenthr, 0,0);
//-------------------
silenthr22 = loadImage("silenthr22.jpg");
image(silenthr22,0,0);
//-------------------
silencio=loadImage("silencio.jpg");
image(silencio,0,0);
//-----------------
ventana = "pantalla-1";
  V = 1;
 
}


void draw(){
if(posYinfo1>250){
  posYinfo1 =a;
}

 if(posYinfo2>250){
  posYinfo2 =a;
}
 if(posYinfo3>250){
  posYinfo3 =a;
}

  if ( V == 1 ) {
  image(silenthr, 0,0);
  posYinfo1 = posYinfo1 + 1 ;
 fill(B);
 textFont( mitexto);
  textSize( 30);  
  text( info1,20,posYinfo1); 
 
  
 
}
 if(V == 2){
image(silenthr22,0,0);
  posYinfo2 = posYinfo2 + 1 ;
  fill( B);
 textFont( mitexto);
  textSize( 30);  
  text( info2, 20,posYinfo2 ); 
}
 if(V==3){
   image(silencio,0,0);
   posYinfo3 = posYinfo3 +1;
    fill( 175);
 textFont( mitexto);
  textSize( 30);  
  text( info3, 20,posYinfo3 ); 
 }
 if(V==4){
   background(120,0,0,100);
fill(0,100);
  rect(230,160, 210, 140);
  fill(255);
  textSize(50);
  text("Reiniciar", 275, 240);
 }
if(frameCount==60*1){
  V=1;
}
if(frameCount == 60*8){
  V = 2;
}
if(frameCount == 60*16){
   V=3;
 }
if(frameCount==60*24){
  V=4;

}
 
  
println(mouseX);
println(mouseY);
println(frameRate);
}




void mousePressed(){
     if ( mouseX > 230 ) {
        frameCount = 0;
        posYinfo1=0;
        posYinfo2=0;
        posYinfo3=0;
    if ( mouseX < 210 ) {
       frameCount = 0;
       posYinfo1=0;
        posYinfo2=0;
        posYinfo3=0;
      if ( mouseY > 160 ) {
         frameCount = 0;
         posYinfo1=0;
        posYinfo2=0;
        posYinfo3=0;
        if ( mouseY < 140) {
      frameCount = 0;
      
      posYinfo1=0;
        posYinfo2=0;
        posYinfo3=0;
      
    }
    }
   }
   }
}
