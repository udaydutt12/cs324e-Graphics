float planetrot;
PVector planetorbit;
void setplanetrot(float x)
{
  planetrot=x;
}
void setplanetorbit(PVector x)
{
  planetorbit=x;
}
class Planet {
  float radius, distance, angle,orbitspeed;
  int num_of_moons;
  Moon[] moons;
  PVector v;
  PShape globe;
  
  Planet(float r, float d, float o,int numberofmoons,PImage img) {
//    PVector.div(starloc,starloc.mag(),v);
    v=PVector.random3D();
    println(starloc);
    num_of_moons=numberofmoons;
    radius = r;
    distance = d;
    v.mult(distance);
    angle = random(TWO_PI);
    orbitspeed = o;
    noFill();
    noStroke();
    globe=createShape(SPHERE,radius);
    globe.setTexture(img);
  }

  void orbit() {
    angle+=orbitspeed;
  }

  void createMoons() {
    float level=1.0;
    float r=radius/(level*2.0);
    moons=new Moon[num_of_moons];
    for(int i=0;i<num_of_moons;i++)
    {
          moons[i]=new Moon(r,random((radius+ r), (radius+r)*2),random(-0.01, 0.01),level);
          level++;
          r=radius/(level*3.0);
    }
  }

  void show() {
    pushMatrix();
    noStroke();
    PVector v2 = new PVector(1, 0, 1);
    PVector p = v.cross(v2);
    rotate(angle, p.x, p.y, p.z);
    stroke(255);
  //  line(0,0,0, p.x*10, p.y*10, p.z*10);
  //  line(0,0,0,v.x*10,v.y*10,v.z*10);
    translate(v.x, v.y, v.z);
        for(int i=0;i<num_of_moons;i++)
        {
          moons[i].show();
          moons[i].orbit();
        }
    noStroke();
    fill(255);
    shape(globe);
    setplanetrot(angle);
    setplanetorbit(p);
    popMatrix();
  }
}