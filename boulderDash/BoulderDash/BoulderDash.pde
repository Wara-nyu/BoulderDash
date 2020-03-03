void setup(){
  size(600,600);//dimension de la fenêtre
  background(0);
}

int i = 20;
int j = 20;

void draw(){
  
    
  for (int y=0; y<height; y+=40){ // y-> l'ordonnée y (h)
    for (int x=0; x<width; x+=40)
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
  if (keyCode == RIGHT){i+=40;}
  if (keyCode == LEFT){i-=40;}
  if (keyCode == UP){j-=40;}
  if (keyCode == DOWN){j+=40;}
 }

   /*strokeWeight(30);//l'epaisseur de la ligne
   stroke(255);//la couleur de la ligne
   rect(5,5,590,590);//(x,y,largeur,hauteur)
   fill(0,255,0); //la couleur de l'interieur du rectangle*/
   
