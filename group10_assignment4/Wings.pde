<<<<<<< HEAD
class Wings extends Bird{
  color c3;
  float a;
  Wings(float x, float y, float r,float s, color c3, float a){
    //super(x,y,r,s,c1,c2); //go though the this.x=x lines in the super class
    this.x=x;
    this.y=y;
    this.radius=r;
    this.speed=s;
    this.a=a;
    this.c3=c3;
  }
  void display(){ 
    fill(c3);   //override the display in the superclass
    triangle(x-radius*10,y,x+radius*30,y,x-radius*10,y-a*35);
  }
  void flap(){
    a=-a;
  }
}
=======
class Wings extends Bird{
  color c3;
  float a;
  Wings(float x, float y, float r,float s, color c3, float a){
    //super(x,y,r,s,c1,c2); //go though the this.x=x lines in the super class
    this.x=x;
    this.y=y;
    this.radius=r;
    this.speed=s;
    this.a=a;
    this.c3=c3;
  }
  void display(){ 
    fill(c3);   //override the display in the superclass
    stroke(c3);
    triangle(x-radius*20,y,x+radius*60,y,x-radius*10,y-a*65);
  }
  void flap(){
    a=-a;
  }
}
>>>>>>> 8d5d0166666d33a490f33d9e8e0c3eafeaddd408
