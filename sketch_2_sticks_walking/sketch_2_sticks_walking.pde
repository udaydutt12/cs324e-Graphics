Top t;
Top t2;
PImage img;
Bottom b;
Bottom b2;
void setup(){
  img = loadImage("sandbeach.jpg");
  surface.setResizable(true);
  surface.setSize(900,300);
  t = new Top(30, 35, 40, 4, 15, 35,1);
  b = new Bottom(30, 35, 40, 4, 15, 35, 40,1);
  t2 = new Top(30,150,20,2,15,20,1);
  b2 = new Bottom(30,150,20,2,15,20,20,1);
}

class Top{
  float headX, headY, torsoLength, speed, radius, armLength;
  int direction;
  Top(float headX,float headY,float torsoLength,float speed, float radius, float armLength, int direction) {
         this.headX = headX;
         this.headY = headY;
         this.torsoLength = torsoLength;
         this.speed = speed;
         this.radius = radius;
         this.armLength = armLength;
         this.direction = direction;
        }
 void display() {
    stroke(0);
    strokeWeight(2);
    line(headX, headY, headX, headY + torsoLength);
    line(headX, headY+ 10,headX - armLength, headY);
    line(headX, headY + 10, headX + armLength,headY);
    ellipseMode(RADIUS);
    ellipse(headX, headY - radius, radius,radius);
    arc(headX,headY-15,10,10,.95,PI-.95);
    strokeWeight(3);
    point(headX-5, headY - 20);
    point(headX+5, headY - 20);
 }
 
  void move() {
   if (headX > 900 - radius){
    this.direction = this.direction * (-1); 
   }
   if (headX < 0 + radius){
    this.direction = this.direction * (-1); 
   }
     headX += speed * (this.direction);
   }

   
}
float omega = 0;
class Bottom extends Top
{
 float hipX, hipY;
 float legLength, footLength, legSpeed;
 Bottom(float headX, float headY,float torsoLength, float speed,float radius, float armLength, float legLength, int direction) {
         super(headX,headY,torsoLength,speed,radius,armLength,direction);
         this.legLength = legLength;
         this.hipX = headX;
         this.hipY = headY + torsoLength;
        }
 void move() {
 strokeWeight(2);
 stroke(0);
 line (headX,hipY,headX+(legLength * (.6*sin(omega))),hipY+legLength);
 line (headX,hipY,headX-(legLength * (.6*sin(omega))),hipY+legLength);
 omega += .04;
 if (headX > 900 - radius){
  this.direction = this.direction * (-1); 
 }
 if (headX < 0 + radius){
  this.direction = this.direction * (-1); 
 }
 headX += this.direction * speed;
 }
}
void draw() {
  image(img,0,0);
  t.display();
  t.move();
  b.move();
  t2.display();
  t2.move();
  b2.move();
}