PImage backimage;
float xpos,ypos;
Star sun;
PImage sunimage,earthimage,marsimage,jupiterimage,neptuneimage;
Planet Mercury;
Planet Venus;
Planet Earth;
Planet Mars;
Planet Jupiter;
Planet Neptune;
void setup()
{
  backimage=loadImage("background.jpg");
  sunimage=loadImage("sunmapthumb.jpg");
  earthimage=loadImage("earthmap1k.jpg");
  marsimage=loadImage("mars_1k_color.jpg");
  jupiterimage=loadImage("jupitermapthumb.jpg");
  neptuneimage=loadImage("neptunemapthumb.jpg");
  backimage.resize(600,600);
  size(600,600,P3D);
  sun=new Star(50,0.05,sunimage); //radius=50, o=.05
  Earth=new Planet(25,75,.1,2,earthimage);//r=25,d=125, orbitspeed=.1,1 moon
  Mars=new Planet(30,150,.05,3,marsimage);
  Jupiter=new Planet(35,300,-.01,16,jupiterimage);
  Neptune=new Planet(40,350,.01,13,neptuneimage);
    ypos=height/2.0; xpos=0;
      Jupiter.createMoons();
   Earth.createMoons();
   Mars.createMoons();
   Neptune.createMoons();
}

void draw() {
 // pushMatrix();
  background(backimage);
  lights();
  translate(xpos,ypos);
 //translate(width/2,height/2);
  sun.show();
    // popMatrix();
  Earth.show(); Jupiter.show();Mars.show();Neptune.show();
  sun.orbit();
  Earth.orbit();
  Jupiter.orbit();
  Mars.orbit();
  Neptune.orbit();

  xpos++;
  if (xpos==600)
  xpos=0;

}