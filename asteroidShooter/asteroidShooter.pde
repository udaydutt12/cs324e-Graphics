Shooter S;
void setup(){
 size(900,900);
 S = new Shooter(450,450,20,0);
}

void draw(){
  background(0);
  S.display();
   if(keyPressed)   
  {
    if(key==CODED)  
      {          
        if(keyCode==LEFT)
          S.alterAngle(1);//fill in code to increase the angle
        else if (keyCode==RIGHT)
          S.alterAngle(0);//fill in code to decrease the tanks angle. Make sure to have a catch for 0 degree
    }
    if(key==' '){
     S.shoot();
    }
  }
}