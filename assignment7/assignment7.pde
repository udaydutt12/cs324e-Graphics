import ddf.minim.*;
Asteroid a,a2,a3,a4,a5;
ParticleSystem ps;
boolean debugOn = true;
int level = 1;
int score = 0;
int numLives = 3;
Sprite sprite;
PVector p1,p2;
void setup(){
  size(600, 600);
  //ps = new ParticleSystem(15);
  a= new Asteroid();
  a2= new Asteroid();
  a3= new Asteroid();
  a4= new Asteroid();
  a5= new Asteroid();
}
void draw(){
  //p1 = new PVector(100, 100);
  background(0);
  a.draw();
  a.update(0.01);
  a2.draw();
  a2.update(0.01);
  a3.draw();
  a3.update(0.01);
  a4.draw();
  a4.update(0.01);
  a5.draw();
  a5.update(0.01);
  
}

  