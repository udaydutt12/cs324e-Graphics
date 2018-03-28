
class Ball
{
  float time=1;
  float xvel=0;
  float yvel=0;
  float ydist=0;
  Ball()
  {
    //instantiate the ball object
  }
  
  void bounce(float xvel_in, float yvel_in,float xpos,float ypos)
  {
    //this will hold how the ball will bounce, and make the
    //ball bounce with damping
    float new_yvel=-1*yvel_in;
    yvel_in=new_yvel;
    
  }
  
  void wallBounce(float xvel,float yvel)
  {
    //Make the boundaries walls, so the ball doesnt fly off the screen
    //so we need wallBounce, basically change in momentum to the opposite direction.
  }
  
  void show(float theta)
  {
  //pushMatrix();
  //translate(0,550);
  //rotate(-1*radians(theta));
  //ellipse(150,42.5,15,15);
  //popMatrix();
    if(time==1)
  {
    xvel=25*cos(radians(theta));
    yvel=40*sin(radians(theta));
  }
  float acceleration=-1;
  ydist+=yvel;
  float xdist=xvel*(time-1);
  pushMatrix();
  translate(xdist,550-ydist);
  rotate(-1*radians(theta));
  fill(255);
  ellipse(150,42.5,15,15);
  fill(0);
  ellipse(150,42.5,2,2);
  ellipse(156.5,42.5,2,2);
  ellipse(143.5,42.5,2,2);
  ellipse(150,49,2,2);
  ellipse(150,36,2,2);
  fill(255);
  popMatrix();
  yvel+=acceleration;
  time++;
  if(xdist<560&&xdist>520)
    rope.catchBall(theta,xdist,ydist);
  }
}