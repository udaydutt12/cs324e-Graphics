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
    arc(headX,headY-15,10,10,.95,PI-.95);
    strokeWeight(3);
    point(headX-5, headY - 20);
    point(headX+5, headY - 20);
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