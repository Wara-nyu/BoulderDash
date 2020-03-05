

void setup(){
  size(600,600);//dimension de la fenêtre
  grille = new int[colonnes][lignes];
  grille[px][py] = 200;
  
}
int lignes = 10;
int colonnes = 10;
int [][] grille;

//PImage pion;
int px = 0;
int py = 0;
//int i = 20;
//int j = 20;
//int pas = 40;



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
  
  PImage pion;
  pion = loadImage("bulma.jpg");
  image(pion,10,10);
     
  } 
  
 /*void keyPressed(){
  if (keyCode == RIGHT){
    if( > width){
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
}*/
