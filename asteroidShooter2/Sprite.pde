class Sprite
{

  PVector position;
  PImage[] image_data;
  int angle_unit=0;
 
  Sprite(float posx,float posy,PImage[] images)
  {
      position=new PVector(posx,posy);
      image_data=images;
      //image_data=new PImage[images.length];
      //image_data=images;
  }

 void display(int w,int h)
  {
    imageMode(CENTER);
    image(image_data[angle_unit],position.x,position.y,w,h);
  }
   void display(int w,int h, int angle)
  {
    imageMode(CENTER);
    image(image_data[angle],position.x,position.y,w,h);
  }
}