Top t;
Bottom b;
void setup(){
  size(900,150);
  int direction = 1;
  t = new Top(30, 35, 50, 4, 15, 35);
  b = new Bottom(30, 35, 50, 4, 15, 35, 10);
}
int direction = 1;
class Top{
  float headX, headY, torsoLength, speed, radius, armLength;
  
  Top(float headX,float headY,float torsoLength,float speed, float radius, float armLength) {
         this.headX = headX;
         this.headY = headY;
         this.torsoLength = torsoLength;
         this.speed = speed;
         this.radius = radius;
         this.armLength = armLength;
        }
 void display() {
    stroke(0);
    strokeWeight(2);
    line(headX, headY, headX, headY + torsoLength);
    line(headX, headY+ 10,headX - armLength, headY);
    line(headX, headY + 10, headX + armLength,headY);
    ellipseMode(RADIUS);
    ellipse(headX, headY - radius, radius,radius);

 }
 
  void move() {
   if (headX > 900 - radius){
    direction = direction * (-1); 
   }
   if (headX < 0 + radius){
    direction = direction * (-1); 
   }
     headX += speed * (direction);
   }

   
}
float omega = 0;
class Bottom extends Top
{
 float hipX, hipY;
 float legLength, footLength, legSpeed;
 Bottom(float headX, float headY,float torsoLength, float speed,float radius, float armLength, float legLength) {
         super(headX,headY,torsoLength,speed,radius,armLength);
         this.legLength = legLength;
         this.hipX = headX;
         this.hipY = headY + torsoLength;
        }
 void move() {
 strokeWeight(2);
 stroke(0);
 line (headX,hipY,headX+(legLength * (2*sin(omega))),hipY+40);
 line (headX,hipY,headX-(legLength * (2*sin(omega))),hipY+40);
 omega += .04;
 if (headX > 900){
  direction = direction * (-1); 
 }
 if (headX < 0){
  direction = direction * (-1); 
 }
 headX += speed * (direction);
 }
}
void draw() {
  background(255);
  t.display();
  t.move();
  b.move();
}