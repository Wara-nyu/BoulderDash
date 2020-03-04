void setup(){
  size(600,600);//dimension de la fenêtre
  grille = new int[colonnes][lignes];
  
}
int lignes = 10;
int colonnes = 10;
int [][] grille;

//int i = 20;
//int j = 20;
//int pas = 40;



void draw(){
     background(0);
  
  float largeurColonne = width/colonnes;
  float hauteurLigne = height/lignes;
  fill(155);
  
  for (int y=0; y<lignes; y++){ // y-> l'ordonnée y (h)
    for (int x=0; x<colonnes; x++){
      float abs = x*largeurColonne;
      float ord = y*hauteurLigne;
      rect(abs+1, ord+1, largeurColonne-1, hauteurLigne-1);
      

      //stroke(0);
      //rect(x, y, 40, 40);
      //fill(0,255,0);
      //noStroke(); 
    }
  }        ellipse(largeurColonne/2, hauteurLigne/2, largeurColonne, largeurColonne);
     
  } 
  
 /*void keyPressed(){
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
}*/
