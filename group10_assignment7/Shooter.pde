class Shooter extends Sprite
{
 Shooter(float posx,float posy,PImage[] images)
 {
   super(posx,posy,images);
 } 
 void alterY(int sign)
 {
   if(sign==1)
   {
     position.y+=5*sin(3*PI/2+radians(5*angle_unit));
     position.x+=5*cos(3*PI/2+radians(5*angle_unit));
   }
   else 
   {
          position.y-=2*sin(3*PI/2+radians(5*angle_unit));
     position.x-=2*cos(3*PI/2+radians(5*angle_unit));
   }
 }
 void alterAngle(int sign)
 {
   if (sign == 1){
    angle_unit+=1;
    if(angle_unit==72)
      angle_unit=0;
   }
   else if (sign == 0){
    angle_unit-=1;
    if(angle_unit==-1)
      angle_unit=71;
   }
 }
 void shoot()
 {
   Shot newShot= new Shot(position.x,position.y,bullet,angle_unit);
   shots.add(newShot);
 }
  Boolean checkCollision(int j)
  {
    if(position.x<asteroids.get(j).position.x+50&&position.x>asteroids.get(j).position.x-50)
      if(position.y<asteroids.get(j).position.y+50&&position.y>asteroids.get(j).position.y-50)
        return true;
    return false;
  }
}