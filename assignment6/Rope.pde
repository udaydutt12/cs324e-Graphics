class Rope
{
  float xpos=0;
  float ypos=0;
  float xdist=0;
  float ydist=0;
  float xdist2=0;
  float ydist2=0;
  float xvel=0;
  float yvel=0;
  float swing=0;
  float theta=0;
  float step=1;
  float count=0;
  float time=1;
  String direction="decreasing";
  float dampingfactor=0.8;
  float init_angle=90;
  Boolean attached=false;
  Boolean happenedlast=false;
  Boolean released=false;
  Boolean haswallbounced=false;
  Rope()
  {
    //instantiate the Rope object
  }
  void catchBall(float theta, float xdist,float ydist)
  {
    background(255);
   pushMatrix();
   translate(0,550);
   rotate(-1*radians(theta));
   rect(50,35,100,15);
   popMatrix();   
   pushMatrix();
   translate(0,550);
   arc(50,50,100,100,PI,2*PI);  
   popMatrix();   
 //  float initial_yvel=50*cos(radians(theta));
   float a=557.5-0.75*23*sin(radians(theta))*50*sin(radians(theta));
   rect(xdist,0,15,550-0.75*23*sin(radians(theta))*50*sin(radians(theta)));
   noFill();
   ellipse(xdist+7.5,a,15,15);
   fill(255);
  ellipse(xdist+7.5,a,2,2);
  ellipse(xdist+7.5+6.5,a,2,2);
  ellipse(xdist+7.5-6.5,a,2,2);
  ellipse(xdist+7.5,a+6.5,2,2);
  ellipse(xdist+7.5,a-6.5,2,2);
  noFill();
   attached=true;
    //catches the ball that was fired by the tank
  }
  Boolean isAttached()
  {
    return attached;
  }
  void releaseBall()
  {
   background(255);
   float setswing=swing;
   pushMatrix();
   translate(0,550);
   fill(255);
   rotate(-1*radians(theta));
   fill(0);
   rect(50,35,100,15);
   fill(255);
   popMatrix();
   pushMatrix();
  // println(swing);
   //println(direction);
  // println(init_angle);
  // println(dampingfactor);
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
 //  float initial_yvel=50*cos(radians(theta));
   pushMatrix();
   translate(625,0);
   rotate(radians(swing));
   if(init_angle<=2)
   step=0;
   if(direction=="decreasing")
   swing-=step;
   else if(direction=="increasing")
   {
     swing+=step;
   }
   if (swing<=init_angle*(-1)*dampingfactor)
   { 
     direction="increasing";
   //  happenedlast=true;
   }
   else if (swing>=init_angle*dampingfactor)
   {
     direction="decreasing";
     //happenedlast=true;
   }
   if (swing==0&&direction=="decreasing")
  { init_angle=init_angle*dampingfactor;
     step=step*0.8;
   }
  // rect(0,0,15,550-0.75*23*sin(radians(theta))*50*sin(radians(theta)));
  fill(255,248,220);
  rect(0,0,15,550-0.75*23*sin(radians(theta))*50*sin(radians(theta)));
  fill(255);
//   ellipse(7.5,557.5-0.75*23*sin(radians(theta))*50*sin(radians(theta)),15,15);
// ellipse(7.5,557.5-0.75*23*sin(radians(theta))*50*sin(radians(theta)),15,15);
  popMatrix();
 // pushMatrix();
  // translate(625,0);
   if(setswing<0&&time==1&&direction=="decreasing")
     {
       xvel=20.0*cos(radians(setswing));
       yvel=15.0*sin(radians(setswing));
     }
       else if(setswing<0&&time==1&&direction=="increasing")
     {
       xvel=-20.0*cos(radians(setswing));
       yvel=-15.0*sin(radians(setswing));
     }
      else  if(setswing>0&&time==1&&direction=="increasing")
     {
       xvel=-20.0*cos(radians(setswing));
       yvel=15.0*sin(radians(setswing));
     }
      else  if(setswing>0&&time==1&&direction=="decreasing")
     {
       xvel=20.0*cos(radians(setswing));
       yvel=-15.0*sin(radians(setswing));
     }
  // float yvel=-20.0/count;
   float acceleration=3;
   //float yvel=;
   float a=557.5-0.75*23*sin(radians(theta))*50*sin(radians(theta));
   float r=sqrt(7.5*7.5+(a)*(a));
   float theta1=degrees(atan(a/7.5));
   xdist2+=xvel;
   ydist2+=yvel;
   if(time==1)
   {
   xpos=625+r*cos(radians(theta1+setswing))+xdist2;
   ypos=r*sin(radians(theta1+setswing))+ydist2;
   }
   else
   {
     xpos+=xvel;
     ypos+=yvel;
   }
   fill(255);
      ellipse(xpos,ypos,15,15);
      fill(0);
  ellipse(xpos,ypos,2,2);
  ellipse(xpos+6.5,ypos,2,2);
  ellipse(xpos-6.5,ypos,2,2);
  ellipse(xpos,ypos+6.5,2,2);
  ellipse(xpos,ypos-6.5,2,2);   
   fill(255);
      
      
      
  // println(xvel+" , "+yvel);
   if(abs(yvel)<.8&&abs(xvel)<.8)
   {
     yvel=0;
     xvel=0;
     ypos=592.5;
   }
   else
   yvel+=acceleration;
   time++;
         if(ypos>=592.5)
  {
    yvel=-.6*yvel;
    xvel=.6*xvel;
    ypos=592.4;
  //  ball.bounce(xvel,yvel,xpos,ypos);
  }
  if((xpos<7.5||xpos>1192.5))
  {
    xvel=-.4*xvel;
    if(xpos<=7.5)
    xpos=7.6;
    else if (xpos>=1192.5)
    xpos=1192.4;
  //  ball.wallBounce(xvel,yvel,xpos,ypos);
  haswallbounced=true;
  }
  attached=false;
  
   
   
  //     if(time==1)
  //{
  //  xvel=25*cos(radians(theta));
  //  yvel=40*sin(radians(theta));
  //}
  //float acceleration=-1;
  //ydist+=yvel;
  //float xdist=xvel*(time-1);
  //pushMatrix();
  //translate(xdist,550-ydist);
  //rotate(-1*radians(theta));
  //ellipse(150,42.5,15,15);
  //popMatrix();
  //yvel+=acceleration;
  //time++;
  //if(abs(yvel)<=1)
  //  rope.catchBall(theta,xdist,ydist);
   
  }
  
  void swing()
  {
    //makes the ball swing on the rope
         float step=1;
       background(255);
   pushMatrix();
   translate(0,550);
   rotate(-1*radians(theta));
   fill(0);
   rect(50,35,100,15);
   fill(255);
   popMatrix();
   pushMatrix();
  // println(swing);
  
   //println(direction);
 //  println(init_angle);
  // println(dampingfactor);
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
 //  float initial_yvel=50*cos(radians(theta));
   pushMatrix();
   translate(625,0);
   rotate(radians(swing));
   if(init_angle<=2)
   step=0;
   if(direction=="decreasing")
   swing-=step;
   else if(direction=="increasing")
   {
     swing+=step;
   }
   if (swing<=init_angle*(-1)*dampingfactor)
   { 
     direction="increasing";
   //  happenedlast=true;
   }
   else if (swing>=init_angle*dampingfactor)
   {
     direction="decreasing";
     //happenedlast=true;
   }
   if (swing==0&&direction=="decreasing")
  { init_angle=init_angle*dampingfactor;
     step=step*0.9;
     count++;
   }
  // rect(0,0,15,550-0.75*23*sin(radians(theta))*50*sin(radians(theta)));
  fill(255,248,220);
  rect(0,0,15,550-0.75*23*sin(radians(theta))*50*sin(radians(theta)));
//  ellipse(0,2.5,15,20);
//   ellipse(7.5,557.5-0.75*23*sin(radians(theta))*50*sin(radians(theta)),15,15);
float a = 557.5-0.75*23*sin(radians(theta))*50*sin(radians(theta));
     fill(255);
   ellipse(7.5,a,15,15);
   fill(0);
  ellipse(7.5,a,2,2);
  ellipse(7.5+6.5,a,2,2);
  ellipse(7.5-6.5,a,2,2);
  ellipse(7.5,a+6.5,2,2);
  ellipse(7.5,a-6.5,2,2);
  fill(255);
   popMatrix();
  }
  void show(float angle)
  {
    theta=angle;
  //  ball.getlaunchAngle(); // or tank.getlaunchANgle
    //then show a different length rope based on the angle and 
    // the physics
   // pushMatrix();
   // translate(625.0/2.0,0);
 //   float initial_yvel=50*cos(radians(theta));
     fill(255,248,220);
    rect(625,0,15,550-0.75*23*sin(radians(theta))*50*sin(radians(theta)));
    fill(255);
  //  popMatrix();

  }
  void detachBall()
  {
      //makes the ball swing on the rope
         float step=1;
       background(255);
   pushMatrix();
   translate(0,550);
   rotate(-1*radians(theta));
   fill(0);
   rect(50,35,100,15);
   fill(255);
   popMatrix();
   pushMatrix();
  // println(swing);
  
   //println(direction);
 //  println(init_angle);
  // println(dampingfactor);
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
 //  float initial_yvel=50*cos(radians(theta));
   pushMatrix();
   translate(625,0);
   rotate(radians(swing));
   if(init_angle<=2)
   step=0;
   if(direction=="decreasing")
   swing-=step;
   else if(direction=="increasing")
   {
     swing+=step;
   }
   if (swing<=init_angle*(-1)*dampingfactor)
   { 
     direction="increasing";
   //  happenedlast=true;
   }
   else if (swing>=init_angle*dampingfactor)
   {
     direction="decreasing";
     //happenedlast=true;
   }
   if (swing==0&&direction=="decreasing")
  { init_angle=init_angle*dampingfactor;
     step=step*0.9;
     count++;
   }
  // rect(0,0,15,550-0.75*23*sin(radians(theta))*50*sin(radians(theta)));
  fill(255,248,220);
  rect(0,0,15,550-0.75*23*sin(radians(theta))*50*sin(radians(theta)));
  fill(255);
//  ellipse(0,2.5,15,20);
//   ellipse(7.5,557.5-0.75*23*sin(radians(theta))*50*sin(radians(theta)),15,15);
popMatrix();
    
  }
}