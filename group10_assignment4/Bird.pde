<<<<<<< HEAD
class Bird {
  float x, y, radius;
  color c1,c2;
  float speed;
 
  Bird(){}
  Bird(float x, float y, float r,float s, color c1,color c2) {
    this.x=x;
    this.y=y;
    this.radius=r;
    this.speed=s;
    this.c1=c1;
    this.c2=c2;
  }
  void display(){
    fill(c2);
    triangle(x+radius*40,y-radius*5,x+radius*23,y-radius*13,x+radius*37,y-radius*27);
    fill(c1);
    ellipse(x, y, radius*60, radius*40);
    ellipse(x+radius*30, y-radius*20, radius*20, radius*20);
    fill(0);
    ellipse(x+radius*30, y-radius*20, radius*3, radius*3);
  }
  void move(){
    if (x>=900){
      x=0;
    }
    else{
      x+=speed;}
  }
  void flap(){
  }
}
=======
class Bird {
  float x, y, radius;
  color c1,c2;
  float speed;
  
  Bird(){}
  Bird(float x, float y, float r,float s, color c1,color c2) {
    this.x=x;
    this.y=y;
    this.radius=r;
    this.speed=s;
    this.c1=c1;
    this.c2=c2;
  }
  void display(){
    fill(c2);
    stroke(c2);
    triangle(x+radius*80,y-radius*5,x+radius*23,y-radius*13,x+radius*50,y-radius*40);
    fill(c1);
    stroke(c1);
    ellipse(x, y, radius*60, radius*40);
    ellipse(x+radius*60, y-radius*25, radius*20, radius*20);
    fill(0);
    stroke(0);
    ellipse(x+radius*60, y-radius*25, radius*3, radius*3);
  }
  void move(){
    if (x>=900){
      x=0;
    }
    else{
      x+=speed;}
  }
  void bead(){
    
  }
}
>>>>>>> 8d5d0166666d33a490f33d9e8e0c3eafeaddd408
