
class Tank
{
 Boolean hasfired=false;
 float theta=0; 
  Tank()
  {
    //instantiate the Tank object
  }
  
  void fire()
  {
    //fires the ball from the tank at the specific angle
    ball.show(theta);
  //  spring.show(theta);
    hasfired=true;
  }
  
  void alterAngle(String sign)
  {
    float step=1;  //CHANGE step to make a good value
    //alter the firing angle of the tank.
    //if the LEFT arrow key is pressed, the input will be "+", so alterAngle will increase the tank angle
    // if the RIGHT arrow key is pressed, the input will be "+", so alterAngle will increase the tank angle
    if(sign=="+"&&theta<=33)
      theta+=step;
    else if(sign=="-"&&theta!=0)
      theta-=step;
  }
  Boolean hasFired()
  {
    return hasfired;
  }
  void show()
  {
   pushMatrix();
   translate(0,550);
   rotate(-1*radians(theta));
      fill(0);
   rect(50,35,100,15);
   fill(255);
   popMatrix();
   pushMatrix();
   translate(0,550);
   fill(0);
   arc(50,50,100,100,PI,2*PI);  
   fill(255);
      arc(55,25,60,45,3*PI/2,2*PI);
   popMatrix(); 
   strokeWeight(1);
   ellipse(12.5,587.5,25,25);
   strokeWeight(2);
   line(0,587.5,25,587.5);
   line(6.25,587.5-12.5*sqrt(3.0)/2.0,18.75,587.5+12.5*sqrt(3.0)/2.0);
   line(18.75,587.5-12.5*sqrt(3)/2.0,6.25,587.5+12.5*sqrt(3)/2.0);
   strokeWeight(1);
   ellipse(37.5,587.5,25,25);
   strokeWeight(2);
   line(25,587.5,25+25,587.5);
   line(25+6.25,587.5-12.5*sqrt(3.0)/2.0,25+18.75,587.5+12.5*sqrt(3.0)/2.0);
   line(25+18.75,587.5-12.5*sqrt(3)/2.0,25+6.25,587.5+12.5*sqrt(3)/2.0);
   strokeWeight(1);
   ellipse(62.5,587.5,25,25);
   strokeWeight(2);
   line(50,587.5,50+25,587.5);
   line(50+6.25,587.5-12.5*sqrt(3.0)/2.0,50+18.75,587.5+12.5*sqrt(3.0)/2.0);
   line(50+18.75,587.5-12.5*sqrt(3)/2.0,50+6.25,587.5+12.5*sqrt(3)/2.0);
   strokeWeight(1);
   ellipse(87.5,587.5,25,25);
      strokeWeight(2);
   line(75,587.5,25+75,587.5);
   line(75+6.25,587.5-12.5*sqrt(3.0)/2.0,75+18.75,587.5+12.5*sqrt(3.0)/2.0);
   line(75+18.75,587.5-12.5*sqrt(3)/2.0,75+6.25,587.5+12.5*sqrt(3)/2.0);
   strokeWeight(1);
   rope.show(theta);
  } 
}