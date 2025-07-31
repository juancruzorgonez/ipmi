PImage ilucionop;
int can, tam, six;
float  T, o, d;
color c1, c2, c3, c4, c5;

//https://youtu.be/QS59rOtJN0E
//-------------------------------


void setup () {
  size(800, 400);
  can=11;
  six=6;
  tam= width/can;
  rectMode(CENTER);
  T=0;
  o+=0;

  c2=color(50, 10, 200);//azul
  c3=color(255, 20, 0);//rojo
  c4=color(100, 0, 10);//variante roja
}


void draw() {
  background(255);
  o+=0;
  T+=1;

  if (key=='f') {
    reset();
  }
  if (key=='a') {
    fondo1();
  }
  if (key==' ') {
    o+=0.002;
    background( lerpColor(c1, c2, o ) );
  }
  //-----------------------------

  translate(400, 0);

  //cuadrados
  for (float x=0; x<can; x+=0.5) {
    for (float y=-1.2; y<six; y++) {

      pushMatrix();
      translate(x*tam+tam/4, y*tam+tam/4);


      if (x%1==0) {
        fill(0);
      } else {
        fill(200);
      }


      if (derechamx(mouseX, 750)) {
        fill(random(100));
      }



      if (x>5) {
        noFill();
        noStroke();
      }




      Rombo(-15, 0, 50, 100);
      stroke(0);



      if (key =='j') {
        rotate(frameCount);
        if (key=='r') {
          reset();
        }
      }
      popMatrix();
    }
  }

  // imagen de referencia
  ilucionop = loadImage("F_45.jpg");
  image(ilucionop, -400, 0);



  //consola
  println(mouseX);
  println("X");
  println(mouseY);
  println("Y");
  println(T);
  println(o);
  println(frameCount);
}
