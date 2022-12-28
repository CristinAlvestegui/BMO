BMO bmo;
void setup(){
  //Tamano de tela...canvas??
  size(1300,1000);
  //inicializamos variaveis no setup tipo construtor?
   bmo = new BMO();
  //timer = int(random(300));
}

void draw(){

  //corpinho
  fill(#06F7BA);
  rect(0, 0, 1300, 1000);
  
  bmo.rostoBmo();
  bmo.pisca(3);
  bmo.bocaBmo();
  bmo.botaoMidia();
  bmo.botaoMagico();
  bmo.botaoTria();

  void mousePressed(){
  if((mouseX >=870) && (mouseY >= 770)){
      fill(#FF7EE8);
    }
  }//Fim do método para click de mouse  
}//fim da função Draw
