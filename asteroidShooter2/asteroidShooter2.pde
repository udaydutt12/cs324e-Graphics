Shooter S;
Shot sh;
Shot[] shots;
boolean hasShot = false;
void setup(){
 size(900,900);
 S = new Shooter(450,450,20,0);
 
}

void draw(){
  background(0);
  S.display();
  if (hasShot){
  sh.display();
  sh.move();
  }
   if(keyPressed)   
  {
    if(key==CODED)  
      {          
        if(keyCode==LEFT)
          S.alterAngle(0);//fill in code to increase the angle
        else if (keyCode==RIGHT)
          S.alterAngle(1);//fill in code to decrease the tanks angle. Make sure to have a catch for 0 degree
    }
    if(key=='x'){
     sh = new Shot(450+S.upperX,450+S.upperY,S.angle);
     sh.display();
     sh.move();
     hasShot = true;
     }
    }
  }