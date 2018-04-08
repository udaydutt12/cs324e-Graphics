class Asteroid extends Sprite
{
  Asteroid(float posx,float posy,PImage[] images)
 {
   super(posx,posy,images);
   angle_unit=round(radians(random(0,360)));
 }
  void move()
  {
    int magnitude=4;
    position.x += magnitude*cos(angle_unit);
    position.y += magnitude*sin(angle_unit);
  }
}