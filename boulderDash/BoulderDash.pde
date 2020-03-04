void setup(){
  size(600,600);//dimension de la fenêtre
  background(0);
}
int x = 0;
int y = 0;
int i = 20;
int j = 20;
int pas = 40;
int cell = 40;
void draw(){
  for (int y=0; y<height; y+=cell){ // y-> l'ordonnée y (h)
    for (int x=0; x<width; x+=cell)
  {
      ellipse(i , j , 20 , 20);
       fill(155,155,150);
      stroke(0);
      rect(x, y, 40, 40);
      fill(0,255,0);
      noStroke(); 
    }
  }  
  } 
  
 void keyPressed(){
  if (keyCode == RIGHT){
    if(i+pas > width){
      keyPressed = false;
    } else {
      i+=pas;
    }
  }
  if (keyCode == LEFT){
    if(i-pas < 0){
      keyPressed = false;
    } else {
      i-=pas;
    }
  }
  if (keyCode == UP){
    if(j-pas < 0) {
      keyPressed = false;
    } else {
      j-=pas;
    }
  }
  if (keyCode == DOWN){
    if(j+pas > height){
      keyPressed = false;
  } else {
      j+=pas;
  }
 }
}
