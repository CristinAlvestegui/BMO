//Declarando variáveis
int eyeSize;
int poX;
int poY;

void setup(){
  size(1300,1000);
  eyeSize = 20;//inicializamos variaveis no setup tipo construtor?
  poX = 130;
  poY = 40;
}

void draw(){
  int x = 150;
  //corpinho
  fill(#06F7BA);
  rect(0, 0, 1300, 1000);
  
  //rostinho
  fill(191, 245, 223);
  rect(poX, poY, 1000, 400);
  
//BMO piscadela olho izuquerdo
  if ((mouseX > 500) && (mouseX < 535)){
    fill(5, 5, 5);
    ellipse(poX*4, poY*4-10, eyeSize, eyeSize-15);//fechando izquerdo
  } else{
    //olhos izquerdo
  fill(5, 5, 5);
  ellipse(poX*4, poY*4-10, eyeSize, eyeSize);
  }
  
  if((mouseX > 700) && (mouseX < 750)){
    fill(5, 5, 5);
    ellipse(poX*6-40, poY*4-10, eyeSize, eyeSize-15);//fechado direito
  }else{
    //olhos direito
    fill(5, 5, 5);
    ellipse(poX*6-40, poY*4-10, eyeSize, eyeSize);
  }
 
  //Boca
  //arc(640, 200, 45, 45, 0, PI);//feliz
  //arc(200, 120, 45, 45, 0, HALF_PI*TWO_PI);//surpresa
  //arc(200, 120, 55, 50, PI+QUARTER_PI, TWO_PI);//triste
  
  if ((mouseY > 180) && (mouseY < 225)){
    arc(640, 200, 45, 45, 0, HALF_PI*TWO_PI);//surpresa
  } else {
    arc(640, 200, 45, 45, 0, PI);
  }
  //disquete
  fill(#1A6C4D);
  rect(poX+50, poY*10+100, 300, eyeSize+10);
  
  //Cursor
  fill(#F6FA2B);
  rect(poX+40, poY*16, 100, eyeSize-5);//horizontal
  rect(210, poY*15, eyeSize-5, 100);//vertical
  
  //Portas de Entrada
  fill(#374871);
  rect(poX+50, poY*20, 120, eyeSize);
  rect(poX*3, poY*20, 120, eyeSize);
  
  //botão principal
  fill(#F5261B);
  ellipse(poX*6, 800, eyeSize*4, eyeSize*4);
  
  //botão segundo
  fill(#52D153);
  ellipse(830, 680,eyeSize+30, eyeSize+30);
  
  //Triangulo
  fill(#7FE2F2);
  triangle(580, 690, 640, x*4+10, 700, 690);
  
  //botão tercero
  fill(#3666E8);
  ellipse(750, 540, eyeSize+30, eyeSize+30);
}
