Ball ball; //create globals
Tank tank;
Rope rope;

void setup()
{
  size(1200,600);
  ball=new Ball(); // Instantiate Ball, Tank and Rope objects
  tank=new Tank();
  rope=new Rope();
  frameRate(50);  //We might need frameRate later on
}

void draw()
{
  background(255);
  tank.show();
  if(keyPressed)   
  {
 //   while(keyPressed&&key==CODED)   //this while loop might be unnecessary bc/ of the draw loop
    if(key==CODED)  
      {          
        if(keyCode==LEFT)
          tank.alterAngle("+");//fill in code to increase the angle
        else if (keyCode==RIGHT)
          tank.alterAngle("-");//fill in code to decrease the tanks angle. Make sure to have a catch for 0 degrees
      }
  }
  if(keyPressed && key==' ' && rope.isAttached()==false)
  {
     tank.fire();

  }
  if(tank.hasFired()&&rope.isAttached())
  {
       rope.swing();
  }
  if(keyPressed && key=='r' && tank.hasFired())
  {
    rope.releaseBall();

  }

}