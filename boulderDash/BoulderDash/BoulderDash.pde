int rangees = 10;
int colonnes = 10;
int px = 0;
int py = 0;
int [][] grille;
int d = 1;
PImage pion;

void setup()
{size(600,600);
 //smooth();
 //noStroke();
 grille = new int [colonnes][rangees];
 pion = loadImage("personnage.png");
 grille[0][0] = 1;
}
void draw ()
{background(255);

 float largeurColonne = width/colonnes;
 float hauteurRangee = height/rangees;
 
 fill(0);
 for(int i=0; i<colonnes; i++)
     {for(int j=0; j<rangees; j++)
       {float x = i*largeurColonne;
        float y = j*hauteurRangee;
         if (grille[i][j] == 1)
         {px=i;
          py=j;
          image(pion,x+1,y+1,largeurColonne-3, hauteurRangee-3);
         }
         else
         {
       rect(x+1, y+1, largeurColonne-3, hauteurRangee-3);
         }
       }
     }
  
}

void keyPressed()
{if (keyCode == RIGHT)
  {if (py+d > 15)
    {keyPressed = false;
    }
   else
    {px+=d;
    }
  }
 if (keyCode == LEFT)
  {if (px-d < 0)
    {keyPressed = false;
    }
   else
    {px-=d;
    }
  }
  if (keyCode == DOWN)
  {if (py+d > 15)
    {keyPressed = false;
    }
   else
    {py+=d;
    }
  }
  if (keyCode == UP)
  {if (py-d < 0)
    {keyPressed = false;
    }
   else
    {py-=d;
    }
  }
}
