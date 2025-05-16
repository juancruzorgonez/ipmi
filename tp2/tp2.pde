PImage silenthr; 
PImage silenthr22;
PImage silencio;
PFont mitexto;
PFont mitexto2;
String info1 = "es un videojuego de terror y supervivencia de disparos en tercera persona\nEs una nueva versión del videojuego de 2001, Silent Hill 2\n cuya historia fue impactante y con un transfondo tan oscuro y complejo,\n que sus fanaticos quedaron asombrados ";
String info2 = "silent hill 2\n te cuenta la historia james sunderland\n un hombre viudo hace 2 años que esta en el pueblo de silent hill buscando \n a su esposa ya que recibio una carta PROVENIENTE\n de ella diciendo que esta en el pueblo";
color B = (#790404);
int posYinfo1 = width/2;
int posYinfo2= width/2;
int a= width;
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
  fill( 0);
 textFont( mitexto);
  textSize( 30);  
  text( info2, 20,posYinfo2 ); 
}
 if(V==3){
   image(silencio,0,0);
 }
 if(V==4){
   background(120,0,0,100);
fill(255, 100);
  rect(width-120, height-60, 100, 40, 10);
  fill(0);
  text("Reiniciar", width-50,height-40);
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


}
