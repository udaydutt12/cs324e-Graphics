PVector starloc;
float starrot;
void setPVector(PVector invector)
{
 starloc=invector;  
}

void setrotate(float invector)
{
  starrot=invector;
}

class Star
{
  float radius, orbitspeed, angle,distance;
  PVector v;
  PShape globe;
  
  Star(float r,float o,PImage img)
  {
    v = PVector.random3D();
    distance=50; //find out how to calculate distance to the orbit
    v.mult(distance);
    radius=r;
    orbitspeed=o;
    angle=random(TWO_PI);
    noStroke();
    noFill();
    globe=createShape(SPHERE,radius);
    globe.setTexture(img);

  }
  
  void orbit()
  {
    angle+=orbitspeed;
  }
  void show()
  {
    pushMatrix();
    noStroke();
    PVector v2 = new PVector(1, 0, 1);
    PVector p = v.cross(v2);
    rotateX(angle);
    stroke(255);
    translate(v.x, v.y, v.z);
 //   line(0,0,0, p.x, p.y, p.z);
 //   line(0,0,0,v.x,v.y,v.z);
 //   line(0,0,0,v2.x*100,v2.y*100,v2.z*100);
    noStroke();
    fill(255);     
    shape(globe);
    setPVector(v);
    setrotate(angle);
    popMatrix();    
  }
  
}