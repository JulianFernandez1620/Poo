  Cuadrado cuadrado;
  Triangulo triangulo ;
  Triangulo triangulo2;
  Triangulo triangulo3;
  Triangulo triangulo4;
  Triangulo triangulo5;
  Trapecio trapecio;
  Nivel nivel1[] = new Nivel[8];
  Nivel nivel2[] = new Nivel[8];
  PFont fuente;
  int x=500;
  int y=465;
  int w=160;
  int h=40;
  int x2=450;
  int y2=350;
  int w2=250;
  int h2=40;
  boolean boton = false;
  boolean boton2 ;
  int i = 0;
  int d;
  int puntox;
  int puntoy;  
  int puntox2;
  int puntoy2;  
  
  void mouseClicked(){
  
  if((mouseX>x)&&(mouseX< x+w)&&(mouseY>y)&&(mouseY< y+h)){
    if(boton){
      boton = true;
    }
    else{
      boton = true;
    }
    
  }
  
  }
  void mousePressed(){
    if((mouseX>x)&&(mouseX< x2+w2)&&(mouseY>y2)&&(mouseY< y2+h2)){
      if(boton2){
        boton2 = false;
        println("verdadero");
      }
      else{
      boton2 = true;
      println("falso");
      }
    }
   }
  
  void menu(){  
  background(0);
  noFill();
  rect(x,y,w,h);
  textSize(150);
  text("TANGRAM",250,250);
  textSize(50);
  text("Jugar",500,500);
  }
    
  void lienzo(){
    cuadrado.pintarcuadrado();
     if(triangulo.posicionx!=mouseX && triangulo2.posicionx!=mouseX && triangulo3.posicionx!=mouseX && triangulo4.posicionx!=mouseX && triangulo5.posicionx!=mouseX && trapecio.posicionx!=mouseX) {
       if(triangulo.posicionx!=mouseY && triangulo2.posicionx!=mouseY && triangulo3.posicionx!=mouseY && triangulo4.posicionx!=mouseY && triangulo5.posicionx!=mouseY && trapecio.posicionx!=mouseY){
       cuadrado.traslacion();
     }
   }
    triangulo.pintartriangulo();
     if(cuadrado.posicionx!=mouseX && triangulo2.posicionx!=mouseX && triangulo3.posicionx!=mouseX && triangulo4.posicionx!=mouseX && triangulo5.posicionx!=mouseX && trapecio.posicionx!=mouseX) {
       if(cuadrado.posicionx!=mouseY && triangulo2.posicionx!=mouseY && triangulo3.posicionx!=mouseY && triangulo4.posicionx!=mouseY && triangulo5.posicionx!=mouseY && trapecio.posicionx!=mouseY){
       triangulo.traslacion();
     }
   }
    triangulo2.pintartriangulo();
    if(cuadrado.posicionx!=mouseX && triangulo.posicionx!=mouseX && triangulo3.posicionx!=mouseX && triangulo4.posicionx!=mouseX && triangulo5.posicionx!=mouseX && trapecio.posicionx!=mouseX) {
       if(cuadrado.posicionx!=mouseY && triangulo.posicionx!=mouseY && triangulo3.posicionx!=mouseY && triangulo4.posicionx!=mouseY && triangulo5.posicionx!=mouseY && trapecio.posicionx!=mouseY){
       triangulo2.traslacion();
     }
    }
   
    triangulo3.pintartriangulo();
     if(cuadrado.posicionx!=mouseX && triangulo2.posicionx!=mouseX && triangulo.posicionx!=mouseX && triangulo4.posicionx!=mouseX && triangulo5.posicionx!=mouseX && trapecio.posicionx!=mouseX) {
       if(cuadrado.posicionx!=mouseY && triangulo2.posicionx!=mouseY && triangulo.posicionx!=mouseY && triangulo4.posicionx!=mouseY && triangulo5.posicionx!=mouseY && trapecio.posicionx!=mouseY){
       triangulo3.traslacion();
     }
   }
    triangulo4.pintartriangulo();
    if(cuadrado.posicionx!=mouseX && triangulo2.posicionx!=mouseX && triangulo3.posicionx!=mouseX && triangulo.posicionx!=mouseX && triangulo5.posicionx!=mouseX && trapecio.posicionx!=mouseX) {
       if(cuadrado.posicionx!=mouseY && triangulo2.posicionx!=mouseY && triangulo3.posicionx!=mouseY && triangulo.posicionx!=mouseY && triangulo5.posicionx!=mouseY && trapecio.posicionx!=mouseY){
       triangulo4.traslacion();
     }
   }
    triangulo5.pintartriangulo();
    if(cuadrado.posicionx!=mouseX && triangulo2.posicionx!=mouseX && triangulo3.posicionx!=mouseX && triangulo4.posicionx!=mouseX && triangulo.posicionx!=mouseX && trapecio.posicionx!=mouseX) {
       if(cuadrado.posicionx!=mouseY && triangulo2.posicionx!=mouseY && triangulo3.posicionx!=mouseY && triangulo4.posicionx!=mouseY && triangulo.posicionx!=mouseY && trapecio.posicionx!=mouseY){
       triangulo5.traslacion();
     }
   }
    trapecio.pintartrapecio();
    if(cuadrado.posicionx!=mouseX && triangulo2.posicionx!=mouseX && triangulo3.posicionx!=mouseX && triangulo4.posicionx!=mouseX && triangulo5.posicionx!=mouseX && triangulo.posicionx!=mouseX) {
       if(cuadrado.posicionx!=mouseY && triangulo2.posicionx!=mouseY && triangulo3.posicionx!=mouseY && triangulo4.posicionx!=mouseY && triangulo5.posicionx!=mouseY && triangulo.posicionx!=mouseY){
       trapecio.traslacion();
     }
   }
    }
  
  
  void crearnivel(){
    background(0);
    
    nivel1(i);
    }
  void nivel1(int a){
    if(a == 0){
    nivel1[0].pintarcuadrado();
    nivel1[1].pintartriangulo();
    nivel1[2].pintartriangulo();
    nivel1[3].pintartriangulo();
    nivel1[4].pintartriangulo();
    nivel1[5].pintartriangulo();
    nivel1[6].pintartrapecio();
  }
  else if(a == 1){
    nivel2[0].pintarcuadrado();
    nivel2[1].pintartriangulo();
    nivel2[2].pintartriangulo();
    nivel2[3].pintartriangulo();
    nivel2[4].pintartriangulo();
    nivel2[5].pintartriangulo();
    nivel2[6].pintartrapecio();
  }
  }
  
  void juego(){
  crearnivel();
    lienzo();
  }
  
  void recuperarTangram(){
  cuadrado.posicionx = 317;
  cuadrado.posiciony = 476;
  cuadrado.angulo = 3.1415/4;
  triangulo.posicionx = 320;
  triangulo.posiciony = 270;
  triangulo.angulo = 0;
  triangulo2.posicionx = 440;
  triangulo2.posiciony = 400;
  triangulo2.angulo = 3.1415/2;
  triangulo3.posicionx = 198;
  triangulo3.posiciony = 519;
  triangulo3.angulo = 3.1415/4;
  triangulo4.posicionx = 260;
  triangulo4.posiciony = 397;
  triangulo4.angulo = 3*3.1415/2;
  triangulo5.posicionx = 404;
  triangulo5.posiciony = 535;
  triangulo5.angulo = 3.1415;
  trapecio.posicionx = 180;
  trapecio.posiciony = 355;
  trapecio.angulo = 3.1415/4;
  trapecio.angt = false;
  
  }
  void juegonuevo(){

    if((distanciac(i) <2) && ((distanciat(i) <2   && distanciat2(i) <2 ) || (distanciat_(i) <10   && distanciat2_(i) <2)) && (distanciat3(i) <2) && ((distanciat4(i) <2  && distanciat5(i) <2) || (distanciat4_(i) <2  && distanciat5_(i) <2)) && (distanciatr(i) <2) ){
      if(boton2){
        boton2 = false;
        i = i+1;
        recuperarTangram();
        juegonuevo();
      }
    else{
      background(155);
      textSize(150);
      text("GANASTE",250,250);
      noFill();
      rect(x2,y2,w2,h2);
      textSize(50);
      text("Siguiente",450,390);
      }
    }
  else{
    juego();
  }
  }
  int distanciac(int a){
  if (a == 0){
    d = nivel1[0].medida()-cuadrado.medida2();
  }
  else if (a == 1){
    d = nivel2[0].medida()-cuadrado.medida2();
  }
  return (d);
  }
  
  int distanciat(int a){
  if (a == 0){
    d = nivel1[1].medida()-triangulo.medida2();
  }
  else if (a == 1){
    d = nivel2[1].medida()-triangulo.medida2();
  }
  return (d);
  }
  
  int distanciat_(int a){
  if (a == 0){
    d = nivel1[2].medida()-triangulo.medida2();

   }
  else if (a == 1){

    d = nivel2[2].medida()-triangulo.medida2();

  }
  return (d);
  }
 
   int distanciat2_(int a){
  if (a == 0){
    d = nivel1[1].medida()-triangulo2.medida2();

   }
  else if (a == 1){

    d = nivel2[1].medida()-triangulo2.medida2();

  }
  return (d);
  }
  
   int distanciat2(int a){
  if (a == 0){
  d = nivel1[2].medida()-triangulo2.medida2();
  
  }
  else if (a == 1){
    d = nivel2[2].medida()-triangulo2.medida2();
  }
  return (d);
  }
  
   int distanciat3(int a){
  if (a == 0){
    d = nivel1[3].medida()-triangulo3.medida2();
  }
  else if (a == 1){
    d = nivel2[3].medida()-triangulo3.medida2();
  }
  return (d);
  }
  
   int distanciat4(int a){
  if (a == 0){
    d = nivel1[4].medida()-triangulo4.medida2();
  }
  else if (a == 1){
    d = nivel2[4].medida()-triangulo4.medida2();
  }
  return (d);
  }
  
     int distanciat4_(int a){
  if (a == 0){
   
    d = nivel1[5].medida()-triangulo4.medida2();
 
  }
  else if (a == 1){
    d = nivel2[5].medida()-triangulo4.medida2();
  }
  return (d);
  }
  
   int distanciat5(int a){
  if (a == 0){
    d = nivel1[5].medida()-triangulo5.medida2();
  }
  else if (a == 1){
    d = nivel2[5].medida()-triangulo5.medida2();
  }
  return (d);
  }
  
     int distanciat5_(int a){
       if(a == 0){
    d = nivel1[4].medida()-triangulo5.medida2();
  }
  else if (a == 1){
    d = nivel2[4].medida()-triangulo5.medida2();
  }
  return (d);
  }

  
   int distanciatr(int a){
  if (a == 0){
    d = nivel1[6].medida()-trapecio.medida2();
  }
  else if (a == 1){
    d = nivel2[6].medida()-trapecio.medida2();
  }
  return (d);
  }
  
  void setup(){
    size (1200,700,P2D);
    fuente = loadFont("AlgerianTangram.vlw");
    textFont(fuente);
    cuadrado = new Cuadrado(317,476,20,5,3.1415/4,50,-60,-55,124,200,100,200);
    triangulo = new Triangulo(320,270,20,5,0,50,-180,-50,-5,125,170,-50,20,45,150);
    triangulo2 = new Triangulo(440,400,20,5,3.1415/2,50,-180,-50,-5,125,170,-50,200,0,65);
    triangulo3 = new Triangulo(198,519,20,5,3.1415/4,50,-125,-45,-5,75,115,-45,0,100,0);
    triangulo4 = new Triangulo(260,397,20,5,3*3.1415/2,50,-83,-33,3,52,87,-33,200,0,0);
    triangulo5 = new Triangulo(404,535,20,5,3.1415,50,-83,-33,3,52,87,-33,200,45,0);
    trapecio = new Trapecio(180,355,20,5,3.1415/4,50,-125,-66, 3,56, 123, 58, 5 ,-65,200,130,0,false,false);
    nivel1[0] = new Nivel(845, 260, 0, 0,3.1415/4, 0,-60,-55,124,120,145,150);
    nivel1[1] = new Nivel(850, 605, 0, 0, 3.1415, 0, -180,-50,-5,125,170,-50,120,145,150);
    nivel1[2] = new Nivel(936,495,0, 0,5*3.1415/4 , 0, -180,-50,-5,125,170,-50,120,145,150);
    nivel1[3] = new Nivel(900, 365, 0, 0, 3.1415, 0,-125,-45,-5,75,115,-45,120,145,150);
    nivel1[4] = new Nivel(895, 178, 0, 0, 3.1415/2, 0,-83,-33,3,52,87,-33,120,145,150);
    nivel1[5] = new Nivel(788, 183, 0, 0, 3*3.1415/2, 0,-83,-33,3,52,87,-33,120,145,150);
    nivel1[6] = new Nivel(720, 528, 0, 0,3.1415/4, 0,-63,-8,63,118,60,-8,-63,-135,120,145,150);
    nivel2[0] = new Nivel(760, 355, 0, 0,3.1415, 0,-60,-55,124,120,145,150);
    nivel2[1] = new Nivel(1000, 360, 0, 0, 3.1415, 0, -180,-50,-5,125,170,-50,120,145,150);
    nivel2[2] = new Nivel(882,230,0, 0,3*3.1415/2 , 0, -180,-50,-5,125,170,-50,120,145,150);
    nivel2[3] = new Nivel(920, 480, 0, 0, 2*3.1415, 0,-125,-45,-5,75,115,-45,120,145,150);
    nivel2[4] = new Nivel(780, 251, 0, 0, 7*3.1415/4, 0,-83,-33,3,52,87,-33,120,145,150);
    nivel2[5] = new Nivel(657, 375, 0, 0, 7*3.1415/4, 0,-83,-33,3,52,87,-33,120,145,150);
    nivel2[6] = new Nivel(795, 498, 0, 0,2*3.1415, 0,-125,-66, 3,56, 123, 58, 5 ,-65,120,145,150);
  }
  
  void draw(){
    
    menu();
    if(boton){
    juegonuevo();
    }
    else{
    menu();
    }
  }
