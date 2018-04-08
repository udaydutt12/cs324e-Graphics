class Fire extends Sprite
{
  Fire(float xpos,float ypos,PImage[] images)
 {
  super(xpos,ypos,images); 
 }
  void move()
  {
    angle_unit+=1;
  }
}