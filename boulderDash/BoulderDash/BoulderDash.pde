

void setup(){
  size(600,600);//dimension de la fenêtre
  grille = new int[colonnes][lignes];
  grille[px][py] = 200;
  pion = loadImage("personnage.png");
  
}
int lignes = 10;
int colonnes = 10;
int [][] grille;

//PImage pion;
int px = 0;
int py = 0;
//int i = 20;
//int j = 20;
int pas = 90;
PImage pion;
int x = 0;
int y = 0;




void draw(){
     background(255);
  
  float largeurColonne = width/colonnes;
  float hauteurLigne = height/lignes;
  fill(200);
  
  for (int y=0; y<lignes; y++){ // y-> l'ordonnée y (h)
    for (int x=0; x<colonnes; x++){
      float abs = x*largeurColonne;
      float ord = y*hauteurLigne;
      rect(abs+1, ord+1, largeurColonne-1, hauteurLigne-1);
    }
  } 
    image(pion,x,y,60,60);
  } 
 
  
 void keyPressed(){
  if (keyCode == RIGHT){
    if( x+pas > width){
      keyPressed = false;
    } else {
      x+=pas;
    }
  }
  if (keyCode == LEFT){
    if(x-pas < 0){
      keyPressed = false;
    } else {
      x-=pas;
    }
  }
  if (keyCode == UP){
    if(y-pas < 0) {
      keyPressed = false;
    } else {
      y-=pas;
    }
  }
  if (keyCode == DOWN){
    if(y+pas > height){
      keyPressed = false;
  } else {
      y+=pas;
  }
 }
}
