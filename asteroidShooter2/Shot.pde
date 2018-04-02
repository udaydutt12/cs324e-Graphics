class Shot{
  float xPos;
  float yPos;
  float velX;
  float velY;
  Shot(float _xPos, float _yPos, float _angle){
  xPos = _xPos;
  yPos = _yPos;
  velX = 3*cos(_angle);
  velY = 3*sin(_angle);
  }


  void display(){
     stroke(0,0,255);
     strokeWeight(10);
     point(xPos,yPos);
  }
  void move(){
    xPos += velX;
    yPos += velY;
  }
  void shoot(){
    return;
  }
}