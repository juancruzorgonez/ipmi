void Rombo(float X, float Y, float ll, float pp) {

  quad(X, Y - pp/2, X + ll/2, Y, X, Y + pp/2, X - ll/2, Y);
}
void reset() {
  T=0;
  o=0;
  background(255);
  frameCount=0;
}
void fondo1() {
  T+=2.5;
  o+=0.05;
  background( lerpColor(c3, c4, o ) );
  if (o<0.5) {
    background(255);
  }
}
boolean derechamx(int x, int s) {
  return x>s;
}
