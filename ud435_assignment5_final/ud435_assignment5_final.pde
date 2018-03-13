PShape sun;

void setup()
{
  size(600,600,P3D);
  sun=loadShape("sol.obj");
}

void draw() {
  background(0);
  lights();
 // shape(sun, 10, 10, 100, 100);
}