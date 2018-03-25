Boolean hasfired;
Tank T;
void setup(){
 size(900,900);

 T = new Tank();
}
void draw(){
  background(200);
  T.display();
  if(keyPressed)   
  {
 //   while(keyPressed&&key==CODED)   //this while loop might be unnecessary bc/ of the draw loop
    if(key==CODED)  
      {          
        if(keyCode==LEFT)
          T.alterAngle(1);//fill in code to increase the angle
        else if (keyCode==RIGHT)
          T.alterAngle(0);//fill in code to decrease the tanks angle. Make sure to have a catch for 0 degrees
        else if (keyCode==UP)
          T.adjustSpring(1);
        else if (keyCode==DOWN)
          T.adjustSpring(0);
    }
  
}
}