import processing.sound.*;
SoundFile file;
String audioName = "bird.mp3";
String path;
Bird b1,b3;Wings b2,b4;
PVector p;

Top t;Bottom b;
PImage img,img2;

void setup(){
  size(900,900);
  img = loadImage("sandbeach.jpg");
  img2= loadImage("underwater.jpg");
  path = sketchPath(audioName);
  file = new SoundFile(this, path);
  file.play();
  b1 = new Bird(50,50,1,2,color(234,223,135),color(250,145,8));
  b2 = new Wings(50,50,1,2,color(255,206,70),1);
  b3 = new Bird(200,150,1.5,1,color(6,64,10),color(234,223,135));
  b4 = new Wings(200,150,1.5,1,color(34,139,41),1.5);
  t = new Top(30, 35, 40, 4, 15, 35);
  b = new Bottom(30, 35, 40, 4, 15, 35, 10);
}

void draw(){
  background(255);
  image(img,0,300,900,300);
  image(img2,0,600,900,300);
  noStroke();
  fill(227,250,255);
  rect(0,0,900,300);
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
}
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
float omega = 0;