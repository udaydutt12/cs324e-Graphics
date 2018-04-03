class Asteroid extends Sprite
{
  boolean ALLOW_ROTATION = true;
  float rotSpeed;
  int size;
  int type;
  int SMALL   = 0;
  int MEDIUM  = 1;
  int LARGE   = 2;
  
  Asteroid(){
    rotSpeed = random(-.5, .5);
    float randVel = 1;
    position = new PVector(random(0, width), random(0, height));
    velocity = new PVector(random(-randVel, randVel), random(-randVel, randVel));
    dead = false;
    setSize(2);
    name = "asteroid";
  }


  
  void update(float deltaTime){
    if(isDestroyed()){
      return;
    }
    position.x += velocity.x * deltaTime;
    position.y += velocity.y * deltaTime;
    rotation += rotSpeed * deltaTime;
    moveIfPastBounds();
  }

  
  void destroy(){
    super.destroy();
    ParticleSystem psys = new ParticleSystem(15);
    psys.setParticleVelocity(new PVector(-2,-2), new PVector(2,2));
    psys.setParticleLifeTime(0,10);
    psys.setPosition(position);
    psys.emit(2);
    //scene.addSprite(psys);
    if(size != SMALL){
      for(int i = 0; i < 2; i++){
        Asteroid a = new Asteroid();
        a.velocity = new PVector(random(-3, 3), random(-3, 3));
        a.name = "asteroid";        
        a.setSize(size - 1);
        a.update(0.1);
        a.draw();
      }
    }
  }
  

  int getPoints(){
    
    switch(size){
      case 2:   return 20;
      case 1:  return 50;
      case 0:   return 100;
    }
    
    return 0;
  }

  /*
  */
  void onCollision(Sprite s){  

    if(s.getName().equals("bullet")){
      score += getPoints();
    }

    if( s.getName().equals("bullet") ||
        s.getName().equals("saucer")){

      destroy();
    }
  }
  void setSize(int s){
    if(s == SMALL || s == MEDIUM || s == LARGE){
      size = s;
      
      if(size == 0){ bounds = 8;}
      if(size == 1){ bounds = 16;}
      if(size == 2){ bounds = 32;}
    }
  }

  void draw(){
    if(isDestroyed()){
      return;
    }
    
    if(ALLOW_ROTATION){
      rotate(rotation);
    }
      
    stroke(255);
    strokeWeight(2);
    ellipse(position.x, position.y,bounds * 2 , bounds * 2);
    
  }
}