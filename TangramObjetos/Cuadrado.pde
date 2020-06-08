class Cuadrado extends Shape{
  int posx;
  int posy;
  int extent;

  

Cuadrado(int posicionx_, int posiciony_, int retraso_, int radianes_, float angulo_, int radioc_, int posx_, int posy_, int extent_,int a_, int b_, int c_){
  super(posicionx_, posiciony_, retraso_, radianes_, angulo_, radioc_,a_,b_,c_);
  posx = posx_;
  posy = posy_;
  extent = extent_;

}

void pintarcuadrado(){
  fill(a,b,c);
  keyReleased();
  push();
 translate(posicionx,posiciony);
 rotate(angulo);
 square(posx, posy,extent);
 fill(200,100,200);
 noStroke();
 circle(0,0,radioc);
 pop();
}  
 int medida2(){
   distancia1 = 1200-(1200-posicionx);
 //println(distancia1);
 return distancia1;
 }
  int medida2y(){
 distancia1y = 800-(800-posiciony);
 //println(distancia2);
 return distancia1y;
}
  
}
