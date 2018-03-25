class Tank{
    float angle;
    float armLength;
    float springStretch;
    float armWidth;
    float springCoeff;
    float force;
    boolean hasFired;
    Tank()
  {
    this.angle = .1;
    this.armLength = 300;
    this.springStretch = 0;
    this.hasFired = false;
    this.armWidth = 20;
    this.springCoeff = 15;
    this.force = this.springStretch * this.springCoeff;
  }
  
  void display(){
    rectMode(CORNERS);
    fill(0,0,255);
    stroke(0,0,255);
    strokeWeight(5);
    //lines of the arm
    line(0,900,this.armLength*cos(this.angle),900-(this.armLength*sin(this.angle)));
    line(0,900-this.armWidth,this.armLength*cos(this.angle)-8,900-(this.armLength*sin(this.angle))-this.armWidth);
    //line of the spring
    float line1X = this.armLength*cos(this.angle);
    float line2X = this.armLength*cos(this.angle)-8;
    float line1Y = 900-(this.armLength*sin(this.angle));
    float line2Y = 900-(this.armLength*sin(this.angle))-this.armWidth;
    float springPercent = 1.0-(this.springStretch / this.armLength);
    line(springPercent*line1X,springPercent*line1Y,springPercent*line2X,springPercent*line2Y);
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
       //this.angle = this.angle; 
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
      //this.angle = this.angle; 
     }
    }

    else
    {
     //this.angle = this.angle; 
    }
    //if the LEFT arrow key is pressed, the input will be "+", so alterAngle will increase the tank angle
     return;
    // if the RIGHT arrow key is pressed, the input will be "+", so alterAngle will increase the tank angle
  }

void adjustSpring(int sign){
    if (sign == 1)
    {
      this.springStretch += 1;
    }
    else if (sign == 0)
    {
      this.springStretch -= 1;
    }
    else
    {
      return;
    }
  }
  
}
 /* void fire()
  {
    //fires the ball from the tank at the specific angle
    hasfired=true;
    
  }
  Boolean hasfired()
  {
    return hasfired;
  }*/