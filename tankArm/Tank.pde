class Tank{
    float angle;
    float armLength;
    float springStretch;
    float armWidth;
    boolean hasFired;
    Tank()
  {
    this.angle = .1;
    this.armLength = 300;
    this.springStretch = 0;
    this.hasFired = false;
    this.armWidth = 20;
  }
  
  void display(){
    rectMode(CORNERS);
    println(this.armLength);
    fill(0,0,255);
    stroke(0,0,255);
    strokeWeight(5);
    line(0,900,this.armLength*cos(this.angle),900-(this.armLength*sin(this.angle)));
    line(0,900-this.armWidth,this.armLength*cos(this.angle)-8,900-(this.armLength*sin(this.angle))-this.armWidth);
    return;
  }
  void alterAngle(int sign)
  {
    //alter the firing angle of the tank.
    if (sign == 1)
    {
      if (this.angle <= ((PI/2)-.5))
      {
       this.angle += .01;
      }
      else
      {
       this.angle = this.angle; 
      }
    }
    else if (sign == 0)
    { 
     if (this.angle >= .1)
     {
      this.angle -= .01; 
     }
     else
     {
      this.angle = this.angle; 
     }
    }

    else
    {
     this.angle = this.angle; 
    }
    //if the LEFT arrow key is pressed, the input will be "+", so alterAngle will increase the tank angle
     return;
    // if the RIGHT arrow key is pressed, the input will be "+", so alterAngle will increase the tank angle
  }
}
void adjustSpring(){
    
    
  }
 /* void fire()
  {
    //fires the ball from the tank at the specific angle
    hasfired=true;
    
  }
  
  void alterAngle(string sign)
  {
    //alter the firing angle of the tank.
    //if the LEFT arrow key is pressed, the input will be "+", so alterAngle will increase the tank angle
     return;
    // if the RIGHT arrow key is pressed, the input will be "+", so alterAngle will increase the tank angle
  }
  Boolean hasfired()
  {
    return hasfired;
  }*/