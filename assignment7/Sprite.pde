class Sprite{

  boolean dead;  
  PVector acceleration;
  PVector velocity;
  PVector position;
  float rotation;
  float bounds;
  boolean visible;
  String name;
 
  Sprite(){
    dead = false;
    visible = true;
    position = new PVector();
    velocity = new PVector();
    rotation = 0;
    name = "";
  }
  
  boolean collidable(){
    return true;
  }

  void destroy(){
    dead = true;
  }

  String getName(){
    return name;
  }
  
  boolean isDestroyed(){
    return dead;
  }
  
  void moveIfPastBounds(){
   if(position.x - bounds/2 > width){
      position.x = -bounds; 
    }
    else if(position.x + bounds/2 < 0){
      position.x = width + bounds;
    }
    else if(position.y + bounds/2 < 0){
        position.y = height + bounds;
    }
    else if(position.y - bounds/2 > height){
      position.y = -bounds;
    }
  }

  void update(float deltaTime){};
  void onCollision(Sprite s){};
  void draw(){};
}