PImage ilucionop;
int can,tam;
float  T,o;
color c1, c2,c3,c4;


//-------------------------------


void setup (){
size(800,400);
can=14;
tam= width/can;
rectMode(CORNER);

T=0;
o+=0;
c1=color(255);
c2=color(50,10,200);
c3=color(255,20,0);
c4=color(100,0,10);
}
//----------------------------
void draw(){
background(255);
 o+=0;
  T+=1;
  //------------------
  if(o<0.5){
    background(255);
  }
  //---------------------------
if(key==' '){
o+=0.002;
   background( lerpColor(c1 ,c2 , o ) );
  
}
 if(key== 'h'){
 background(255);
  
}
   if(mousePressed){
      background(255);
     reset();
   }
 
   if(key=='a'){
     aceleracion();
     
   }
   if(key=='g'){
movimiento();
   }
  
   //-----------------------------
  //cuadrados negros
for(int x=1;x<can;x+=2){
 for(int y=-2;y<can;y++){ 

  pushMatrix();
  translate(x*tam+tam/2,y*tam+tam/2);
  float largo= dist(x*tam, y*tam, x*tam+2, y*tam+2);
  float diag= dist(tam,0,width,height);
  float rotacion= map(largo, 0, diag, 5, 1); 
  stroke(40);
  strokeWeight(1);
  fill(0);
  rotate(radians(45*rotacion+T));
  rect(x,y,tam,tam);
  
  popMatrix();
}
}



// cuadrados grises
for(int x=2;x<can;x+=2){
 for(int y=-2;y<can;y++){ 
 
 pushMatrix();
  translate(x*tam+tam/2,y*tam+tam/2);
  float largo= dist(x*tam, y*tam, x*tam+2, y*tam+2);
  float diag= dist(tam,0,width/2,height/2);
 float rotacion= map(largo, 0, diag, 5, 1); 
  stroke(40);
  strokeWeight(1);
  fill(200);
  rotate(radians(45*rotacion-T));
 rect(x,y,tam,tam);
  popMatrix();
 }
 }
// imagen de referencia
ilucionop = loadImage("F_45.jpg");
image(ilucionop,0,0);




//consola
println(mouseX);
println("X");
println(mouseY);
println("Y");
println(T);
println(o);
}

void reset(){
  T=0;
  o=0;
 background(255);

}
void aceleracion(){
 T+=2.5;
 o+=0.05;
 background( lerpColor(c3 ,c4 , o ) );
    if(o<0.5){
    background(255);
  }
}
void movimiento(){
  background(0,180,0);
  for(int x=1;x<can;x+=2){
 for(int y=-2;y<can;y++){ 

  pushMatrix();
  translate(x*tam+tam/2,y*tam+tam/2);
  float largo= dist(x*tam, y*tam, x*tam+2, y*tam+2);
  float diag= dist(tam,0,width,height);
  float rotacion= map(largo, 0, diag, 5, 1); 
  stroke(40);
  strokeWeight(1);
  fill(0);
  rotate(radians(45*rotacion-frameCount));
  rect(x,y,tam,tam);
  
  popMatrix();
}
}
  
  
  
  
for(int x=2;x<can;x+=2){
 for(int y=-2;y<can;y++){ 
 
 pushMatrix();
  translate(x*tam+tam/2,y*tam+tam/2);
  float largo= dist(x*tam, y*tam, x*tam+2, y*tam+2);
  float diag= dist(tam,0,width/2,height/2);
 float rotacion= map(largo, 0, diag, 5, 1); 
  stroke(40);
  strokeWeight(1);
  fill(240);
  rotate(radians(45*rotacion+frameCount));
 rect(x,y,tam,tam);
  popMatrix();
 }  
}
}
