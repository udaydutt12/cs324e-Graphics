class cParticle{
    
    PVector position;
    PVector velocity;
    PVector acceleration;    
    float lifeTime;
    boolean isAlive;
      
    cParticle(){
      position = new PVector();
      velocity = new PVector();
      acceleration = new PVector();      
      lifeTime = 1.0f;
      isAlive = true;
    }
  
    void update(float deltaTimeInSeconds){
      
      velocity.x += acceleration.x * deltaTimeInSeconds;
      velocity.y += acceleration.y * deltaTimeInSeconds;
      
      position.x += velocity.x * deltaTimeInSeconds;
      position.y += velocity.y * deltaTimeInSeconds;

      lifeTime -= deltaTimeInSeconds;
    }
    
    boolean isAlive() {
    if (lifeTime < 0.0) {
      return false;
    } else {
      return true;
    }
  }
    
    void setPosition(PVector pos){
      position = pos;
    }
    
    void setVelocity(PVector vel){
      velocity = vel;
    }
    
    void setAcceleration(PVector accel){
      acceleration = accel;
    }
    
    void setLifeTime(float l){
      if(l > 0.0f){
        lifeTime = l;
      }
    }
    
    public void draw(){
      fill(255);
      noStroke();
      ellipse(position.x, position.y, 8, 8);
    }
  }