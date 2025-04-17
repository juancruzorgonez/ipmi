PImage cuborubik;

void setup(){
 size(800, 400);
 background(255);
 cuborubik = loadImage("cuborubik.jpg");
 image(cuborubik, 0,0);

}


  
void draw(){
//forma
background(255);
image(cuborubik, 0,0);

strokeWeight(5);
//interior cara roja
fill(139,0,0);
quad(422,85,425,280,585,363,586,173);
line(471,112,470,300);
line(525,144,525,330);
line(425,150,584,242);
line(426,222,584,308);
//interior cara azul
fill(0,0,255);
quad(586,173,585,363,770,282,775,84);
line(584,243,773,156);
line(584,309,770,223);
line(650,144,652,330);
line(710,110,714,305);
//cara blanca
fill(255);
quad(422,85,585,170,775,84,610,8);
line(471,112,660,35);
line(524,140,711,56);
line(496,56,650,144);
line(555,30,710,110);
//
println("x");
println(mouseX);
println("y");
println(mouseY);

}
