void setup(){
  size(600,600);//dimension de la fenêtre
  background(0);
}

void draw(){
  for (int y=0; y<height; y+=40){ // y-> l'ordonnée y (h)
    for (int x=0; x<width; x+=40)
  {
  
      rect(x, y, 40, 40);
      fill(155,155,150);
      stroke(0);
    }
  }

   /*strokeWeight(30);//l'epaisseur de la ligne
   stroke(255);//la couleur de la ligne
   rect(5,5,590,590);//(x,y,largeur,hauteur)
   fill(0,255,0); //la couleur de l'interieur du rectangle*/
   
}
