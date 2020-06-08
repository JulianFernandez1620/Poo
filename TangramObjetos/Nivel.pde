class Nivel extends Shape{
    int  posx;
    int posy;
    int extent;
    int posxt;
    int posxt2;
    int posxt3;
    int posyt;
    int posyt2;
    int posyt3;
    int posxtr;
    int posxtr2;
    int posxtr3;
    int posxtr4;
    int posytr;
    int posytr2;
    int posytr3;
    int posytr4;
    
  Nivel(int posicionx_, int posiciony_, int retraso_, int radianes_, float angulo_, int radioc_,int posx_, int  posy_, int extent_, int a_, int b_, int c_ ){
  super(posicionx_, posiciony_, retraso_, radianes_, angulo_, radioc_,a_,b_,c_);
  posx = posx_;
  posy = posy_;
  extent = extent_;

  }
  void pintarcuadrado(){
  noStroke();
  fill(a,b,c);
  push();
 translate(posicionx,posiciony);
 rotate(angulo);
 square(posx, posy,extent);
 fill(200,100,200);
 noStroke();
 circle(0,0,radioc);
 pop();
}

Nivel(int posicionx_, int posiciony_, int retraso_, int radianes_, float angulo_, int radioc_,int posxt_, int  posyt_, int posxt2_, int posyt2_, int posxt3_, int posyt3_, int a_, int b_, int c_ ){
  super(posicionx_, posiciony_, retraso_, radianes_, angulo_, radioc_,a_,b_,c_);
   posxt = posxt_;
  posyt = posyt_;
   posxt2 = posxt2_;
  posyt2 = posyt2_;
   posxt3 = posxt3_;
  posyt3 = posyt3_;
}

void pintartriangulo(){
  noStroke();
  fill(a,b,c);
  push();
 translate(posicionx,posiciony);
 rotate(angulo);
 triangle(posxt,posyt,posxt2,posyt2,posxt3,posyt3);
 fill(a,b,c);
 noStroke();
 circle(0,0,radioc);
 pop();  
}

Nivel(int posicionx_, int posiciony_, int retraso_, int radianes_, float angulo_, int radioc_,int posxtr_, int  posytr_, int posxtr2_, int posytr2_, int posxtr3_, int posytr3_, int posxtr4_, int posytr4_, int a_, int b_, int c_ ){
  super(posicionx_, posiciony_, retraso_, radianes_, angulo_, radioc_,a_,b_,c_);
  posxtr = posxtr_;
  posytr = posytr_;
  posxtr2 = posxtr2_;
  posytr2 = posytr2_;
  posxtr3 = posxtr3_;
  posytr3 = posytr3_;
  posxtr4 = posxtr4_;
  posytr4 = posytr4_;
}

void pintartrapecio(){
  noStroke();
   fill(a,b,c);
   push();
   translate(posicionx,posiciony);
   rotate(angulo);
   quad(posxtr,posytr,posxtr2,posytr2,posxtr3,posytr3,posxtr4,posytr4);
   fill(a,b,c);
   noStroke();
   circle(0,0,radioc);
   pop(); 
  
  }


int medida(){
 distancia2 = 1200-(1200-posicionx);
 //println(distancia2);
 return distancia2;
}
int mediday(){
 distancia2y = 800-(800-posiciony);
 //println(distancia2);
 return distancia2y;
}
}
