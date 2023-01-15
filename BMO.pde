class BMO {
  //Declarando variáveis
  int eyeSize;
  int poX;
  int poY;
  int timer;
  
  BMO(){//Construtor ele retorna um objeto! é aqui que instanciamos nossas váriaves.
    eyeSize = 20;
    poX = 130;
    poY = 40;
  }
  
  void rostoBmo(){
    //rostinho
    fill(191, 245, 223);
    rect(poX, poY, 1000, 400);
  }//Fim da função para desenho do rosto do BMO

  //BMO piscadela olho izquerdo
    if (mousePressed && (mouseButton == LEFT)){
      fill(5, 5, 5);
      ellipse(poX*4, poY*4-10, eyeSize, piscaEye);//fechando izquerdo
    } else {
      //olhos izquerdo
      fill(5, 5, 5);
      ellipse(poX*4, poY*4-10, eyeSize, eyeSize);
    }
    
    //BMO piscadela olho direito
    if(mousePressed && (mouseButton == RIGHT)){
      fill(5, 5, 5);
      ellipse(poX*6-40, poY*4-10, eyeSize, piscaEye);//fechado direito
    } else{
      //olhos direito
      fill(5, 5, 5);
      ellipse(poX*6-40, poY*4-10, eyeSize, eyeSize);
    }
  }//Fim da função para pisca de olhos

  void bocaBmo(){
   
  //Boca
  //arc(640, 200, 45, 45, 0, PI);//feliz
  //arc(200, 120, 45, 45, 0, HALF_PI*TWO_PI);//surpresa
  //arc(200, 120, 55, 50, PI+QUARTER_PI, TWO_PI);//triste
      
  if (mouseY >= 900){
      noFill();
      arc(625, 200, 55, 50, PI+QUARTER_PI, TWO_PI);//triste
    }else if ((mouseY > 180) && (mouseY < 225)){
      arc(640, 200, 45, 45, 0, HALF_PI*TWO_PI);//surpresa
    }else {
      arc(640, 200, 45, 45, 0, PI);//feliz
    }
  }//Fim da função para mexer com boca do Bmo

  void botaoMidia(){
    
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
    
  }//Fim do método para botões de Midia

  void botaoMagico(){
    
  //botão principal
    fill(#F5261B);
    ellipse(poX*7, 800, eyeSize*4, eyeSize*4);
    
    //botão segundo
    fill(#52D153);
    ellipse(poX*8, 680,eyeSize+30, eyeSize+30);
  
    //botão tercero
    fill(#3666E8);
    ellipse(poX*7, 540, eyeSize+30, eyeSize+30);
  }

  void botaoTria(){
    //Triangulo
    fill(#7FE2F2);
    triangle(620, 720, 800, 720, 710, 610); 
  }
}
