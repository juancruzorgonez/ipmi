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
boolean derechamx() {
  return mouseX>700;
}
