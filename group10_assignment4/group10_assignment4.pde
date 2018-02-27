import processing.sound.*;
SoundFile file;
String audioName = "bird.mp3";
String path;
Bird b1,b3;Wings b2,b4;
PVector p;

Top t;Bottom b;
PImage img,img2;

Fish f1,f2;
fin f11,f22;
tail t1,t2;
void setup(){
  size(900,600);
  img = loadImage("sandbeach.jpg");
  img2= loadImage("underwater.jpg");
  path = sketchPath(audioName);
  file = new SoundFile(this, path);
  file.play();
  b1 = new Bird(50,50,1,2,color(234,223,135),color(250,145,8));
  b2 = new Wings(50,50,1,2,color(255,206,70),1);
  b3 = new Bird(200,150,1.5,1,color(6,64,10),color(234,223,135));
  b4 = new Wings(200,150,1.5,1,color(34,139,41),1.5);
  t = new Top(30, 245, 40, 4, 15, 35);
  b = new Bottom(30, 245, 40, 4, 15, 35, 10);
  f1=new Fish(true,0,2,color(10,10,240),0);
  f11=new fin(true,0,2,color(10,10,240),0);
  t1=new tail(true,0,2,color(10,10,240),0);
  f2=new Fish(false,0,2,color(0,0,255),0);
  f22=new fin(false,0,2,color(0,0,255),0);
  t2=new tail(false,0,2,color(0,0,255),0);
}

void draw(){
  background(255);
  image(img,0,200,900,200);
  image(img2,0,400,900,200);
  noStroke();
  fill(227,250,255);
  rect(0,0,900,200);
  //frameRate(5);
  stroke(0);
  b2.display();
  b2.move();
  b2.flap();
  b1.display();
  b1.move();
  b4.display();
  b4.move();
  b4.flap();
  b3.display();
  b3.move();
  t.display();
  
  t.move();
  b.move();
  
  f1.display();
  f1.move();
  f11.flap();
  t1.flap();
  
  f2.display();
  f2.move();
  f22.flap();
  t2.flap();
}