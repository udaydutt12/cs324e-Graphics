class Ball {
  float x,y,r,m,fx,fy,vy,vx,ax,ay,radius;
  float friction= 0.995;
  float ks = 0.5;
  float kd = 0.1;
  float ypos;
  Boolean touchrope = false;
  Boolean drop = false;
  
  Ball(){}
  Ball(float x, float y, float m, float r,float vx, float vy){
    this.x=x;
    this.y=y;
    this.m=m;
    this.r=r;
    this.vx=vx;
    this.vy=vy;
  }
  
  void applyForce(){
    if (touchrope == false){
      ax=0;
      ay=9.8/m;
      vx += ax;
      vy += ay;
      vx *= friction;
      vy *= friction;
      x += vx;
      y += vy;
      ypos =y;
    }
  }
  
  void display(){
    ellipse(x, y, r, r);
  }
  
  void bounce()
  {
    if (x>=300){
      touchrope =true;
    }
    if (touchrope==true && drop ==false){
      float f = -((ks * (x - 300)) + kd*vx);
      float a = f/m;
      y=ypos+(0.5*(vx*vx+vy*vy))/9.8;
      vx = vx + a;
      x += vx;
    }
    //this will hold how the ball will bounce, and make the
    //ball bounce with damping
  }
  
  void drop(){
    drop=true;
    touchrope = false;
  }
  void wallBounce()
  {
    //Make the boundaries walls, so the ball doesnt fly off the screen
    //so we need wallBounce, basically change in momentum to the opposite direction.
  }
}