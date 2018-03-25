Ball ball; //create globals
//Tank tank;
//Rope rope;

void setup()
{
  size(500,500);
  ball=new Ball(200,480,1000,20,0.9,-3); // Instantiate Ball, Tank and ROpe objects
  //tank=new Tank();
  //rope=new Rope();
  frameRate(100);  //We might need frameRate later on
}

void draw()
{
  background(0);
  ball.display();
  ball.applyForce();
  ball.bounce();
  if (mousePressed){
    ball.drop();
  }
  /*
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
  if(keyPressed && key==' ')
  {
     tank.fire();
     rope.catchBall();
     rope.swing();
  }
  if(keyPressed && key==' ' && tank.hasFired())
  {
    rope.releaseBall();
  }
  if(ypos==0)
  {
    ball.bounce();
  }
  if(xpos==0||xpos==900)
  {
    ball.wallBounce();
  }
  */
}