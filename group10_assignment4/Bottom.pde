
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