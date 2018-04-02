class Shooter{
 float centerX;
 float centerY;
 float upperX;
 float upperY;
 float leftX;
 float leftY;
 float rightX;
 float rightY;
 float distance;
 float angle;
 Shooter(float _centerX, float _centerY,float _distance, float _angle){
  centerX = _centerX;
  centerY = _centerY;
  distance = _distance;
  angle = _angle;
  upperX = 0;
  upperY = -35;
  leftX = -15;
  leftY = 15;
  rightX = 15;
  rightY = 15;
 }
 void display(){
    strokeWeight(2);
    stroke(255);
    pushMatrix();
    translate(width/2,height/2);
    rotate(angle);
    triangle(upperX,upperY,leftX,leftY,rightX,rightY);
    popMatrix();
    
 }
 void alterAngle(int sign){
   if (sign == 1){
    angle += .03;
   }
   else if (sign == 0){
     
    angle -= .03; 
   }
 }
}