human h1;
void setup()
{
 size(900,900);
 h1=new human(30,20,20,35,0);
}
class animal
{
  float speed;
  animal(float speed)
  {
    this.speed=speed;
  }
 
//    float headX=30;
//float headY=20;
//float hipX;
//float hipY;
//float len=20;
//float torsolength=35;
//float a1,a2,a3,a4;
//float speed;
}

class human extends animal
{
  float hipX;float hipY;float headX;float headY; float speed;float len;float torsolen;
  float a1,a2,a3,a4;
  human(float headX,float headY,float len,float torsolen, float speed)
  {
    super(speed);
    this.headX=headX;
    this.headY=headY;
    this.hipX=headX;
    this.hipY=headY+torsolen;
    this.len=len;
    this.torsolen=torsolen;
  }
  void move()
  {
    this.hipX=headX;
    this.hipY=headY+torsolen;
 line (this.headX,this.headY,this.hipX,this.hipY);//body
 line (this.headX,this.headY+15,this.headX+35,this.headY);//right arm
 line (this.headX,this.headY+15,this.headX-35,this.headY);//lest arm
 ellipse(this.headX,this.headY,20,20);//head
 this.a1=sin(this.speed);
 this.a2=sin(this.speed-0.4)-0.3;
 this.a3=sin(PI+this.speed);
 this.a4=sin(PI+this.speed-0.4)-0.3;
 float leftKneeX=this.hipX+sin(this.a1)*this.len;
 float leftKneeeY=this.hipY+cos(this.a1)*this.len;
 float rightKneeX=this.hipX+sin(this.a3)*this.len;
 float rightKneeY=this.hipY+cos(this.a3)*this.len;
 float leftAnkleX=leftKneeX+sin(this.a2)*this.len;
 float leftAnkleY=leftKneeeY+cos(this.a2)*this.len;
 float rightAnkleX=rightKneeX+sin(this.a4)*this.len;
 float rightAnkleY=rightKneeY+cos(this.a4)*this.len;
 line (this.hipX,this.hipY,leftKneeX,leftKneeeY);
 line (leftKneeX,leftKneeeY,leftAnkleX,leftAnkleY);
 line (this.hipX,this.hipY,rightKneeX,rightKneeY);
 line (rightKneeX,rightKneeY,rightAnkleX,rightAnkleY);
 this.speed+=0.07;
 this.headX+=4;
if(this.headX>=900)
  this.headX=0;
  }
}

void draw()
{
 background(170);
 h1.move();
}