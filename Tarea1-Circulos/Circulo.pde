class Circulo{
  float x;
  float y;
  float diametro;
  int id;
  boolean mover;
 
  Circulo(float a, float b, float c, int d){
     x = a;
     y = b;
     diametro = c;
     id = d;
     ellipseMode(CENTER);
     mover = false;
  }

void dibuja(){
   ellipse(x,y,diametro,diametro);
}

boolean isAdentro(float a, float b){
   if( dist(a,b,x,y) < diametro/2)
         return true;
   else
         return false;
         
}




}
