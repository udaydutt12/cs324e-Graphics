class Shot extends Sprite
{
  Shot(float posx,float posy,PImage[] images,int angledunit)
 {
   super(posx,posy,images);
   angle_unit=angledunit;
   position.x+=32*cos(3*PI/2+radians(5*angle_unit));
   position.y+=32*sin(3*PI/2+radians(5*angle_unit));

  // position.y=10;
 }
  void move(){
    int magnitude=4;
    position.x += magnitude*cos(3*PI/2+radians(5*angle_unit));
    position.y += magnitude*sin(3*PI/2+radians(5*angle_unit));
  }
  Boolean checkCollision(int j)
  {
    if(position.x<asteroids.get(j).position.x+50&&position.x>asteroids.get(j).position.x-50)
      if(position.y<asteroids.get(j).position.y+50&&position.y>asteroids.get(j).position.y-50)
        return true;
    return false;
  }
}