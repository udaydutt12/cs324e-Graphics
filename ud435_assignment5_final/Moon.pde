class Moon
{
  float radius, distance, angle,orbitspeed,level;
  int num_of_moons;
  Moon[] moons;
  PVector v;
  PShape globe;
  Moon(float r, float d,float o, float lvl)
  {
    radius=r;
    distance=d;
    orbitspeed=o;
    angle=random(TWO_PI);
    level=lvl;
    v=PVector.random3D();
    v.mult(distance);
  }
    void orbit() {
    angle+=orbitspeed;
  }
 void show()
 {
   pushMatrix();
    v=PVector.random3D();
    v.mult(distance);
    noStroke();
    PVector v2 = new PVector(1, 0, 1);
    PVector p = v.cross(v2);
    rotate(angle, p.x, p.y, p.z);
  //  rotateX(starrot);
   // rotate(planetrot,planetorbit.x,planetorbit.y,planetorbit.z);
    stroke(255);
    translate(v.x, v.y, v.z);
    noStroke();
    fill(255);
    sphere(radius);
    popMatrix();
 }
}