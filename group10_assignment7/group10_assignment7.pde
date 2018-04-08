Shooter S;
Fire fire;
PImage[] bullet=new PImage[1];
PImage[] big_asteroids=new PImage[7];
PImage[] med_asteroids=new PImage[9];
PImage[] sm_asteroids=new PImage[6];
PImage[] spritesheets=new PImage[2];
PImage[] spaceship=new PImage[72];
PImage[] explosion=new PImage[25];
ArrayList <Shot> shots=new ArrayList <Shot>(0);
ArrayList <Asteroid> asteroids=new ArrayList <Asteroid>(0);
ArrayList <Fire> fires=new ArrayList <Fire>(0);
ArrayList <Shooter> shooters=new ArrayList <Shooter>(0);
Boolean hasfired=false;
int count=0;


void setup()//sets up variables,display parameters, and loads images
{  
  size(1200, 700);

  spritesheets[0]=loadImage("ship.png");
  spritesheets[1]=loadImage("explosion.png");
  bullet[0]=loadImage("bullet1.png");
  for (int i=1; i<8; i++)
    big_asteroids[i-1]=loadImage("bigasteroid"+i+".png");
  for (int i=1; i<10; i++)
    med_asteroids[i-1]=loadImage("medasteroid"+i+".png");
  for (int i=1; i<7; i++)
    sm_asteroids[i-1]=loadImage("smasteroid"+i+".png");
  for (int i=0; i<72; i++)
    spaceship[i]=spritesheets[0].get(128*(i%6), floor(i/6.0)*128, 128, 128);
  for (int i=0; i<24; i++)
    explosion[i]=spritesheets[1].get(64*(i%5), floor(i/5.0)*64, 64, 64);
  //frameRate(10);
}

void draw()
{
  if(shooters.size()==0)
  {
    S = new Shooter(width/2.0, height/2.0, spaceship);
  shooters.add(S);
  }
  background(0);
  fill(255);
  strokeWeight(4);
  stroke(10);
  line(width/2, height, width/2, 0);
  line(0, height/2, width, height/2);
  float p=random(1);
  float xpos=0;
  float ypos=0;
  if (p<=0.1)
  {
    for (int i=0; i<=1; i++)
    {
      p=random(1);
      if (p<=0.5)
        xpos=0;
      else
        xpos=width;
      p=random(1);
      if (p<=0.5)
        ypos=0;
      else
        ypos=height;
    }  
    Asteroid a=new Asteroid(xpos, ypos, big_asteroids);
    asteroids.add(a);
  }
  for (int i=0; i<asteroids.size(); i++)
  {
    asteroids.get(i).move();
    asteroids.get(i).display(100, 100);
  }
  for (int i=0; i<shots.size(); i++)
  { 
    shots.get(i).move();
    shots.get(i).display(25, 25, 0);
  }
  shooters.get(0).display(64, 64); 
  checkCollisions();
  for (int i=0; i<fires.size(); i++)
  { 

    if (fires.get(i).angle_unit==23)
      fires.remove(i);
    if (fires.size()!=0)
    {
      fires.get(i).move();
      fires.get(i).display(250, 250);
    }
  }
  fill(0);
}

void checkCollisions()
{
  // ArrayList<Integer>indices= new ArrayList<Integer>(1);
  for (int i=0; i<shots.size(); i++)
    for (int j=0; j<asteroids.size(); j++)
      if (shots.get(i).checkCollision(j))
      {
        Fire f=new Fire(asteroids.get(j).position.x, asteroids.get(j).position.y, explosion);
        fires.add(f);
        asteroids.remove(j);
      }
    for (int j=0; j<asteroids.size(); j++)
      if (shooters.get(0).checkCollision(j))
      {
        Fire f=new Fire(shooters.get(0).position.x, shooters.get(0).position.y, explosion);
        fires.add(f);
        shooters.remove(0);
        break;
      }
}
void keyPressed()
{
  if(shooters.size()!=0)
  {
  if(keyCode==UP)
    shooters.get(0).alterY(1);
  if(keyCode==DOWN)
    shooters.get(0).alterY(0);
  if (keyCode==LEFT)
    shooters.get(0).alterAngle(0);//fill in code to increase the angle
  if (keyCode==RIGHT)
    shooters.get(0).alterAngle(1);//fill in code to decrease the tanks angle. Make sure to have a catch for 0 degree
  }
}
void keyReleased()
{
  if (key=='x')
    shooters.get(0).shoot();
}