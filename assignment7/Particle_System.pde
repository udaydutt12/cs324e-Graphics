class ParticleSystem extends Sprite{

  private PVector position; 
  private ArrayList particles;  
  private PVector minVelocityRange;
  private PVector maxVelocityRange;  
  private int numParticlesAlive;
  private float minLifeTimeRange;
  private float maxLifeTimeRange;
  
  
  ParticleSystem(int numParticles){
    
    setPosition(new PVector());
    numParticlesAlive = numParticles;
    setParticleLifeTime(0, 0);
    setParticleVelocity(new PVector(), new PVector());
    particles = new ArrayList();
    for(int i = 0; i < numParticles; i++){
      cParticle particle = new cParticle();      
      particles.add(particle);
    }
    bounds = 10;
  }
  
  void setPosition(PVector pos){
    position = new PVector(pos.x, pos.y);
  }

  void setParticleVelocity(PVector vel1, PVector vel2){
    minVelocityRange = vel1;
    maxVelocityRange = vel2;
  }

  void update(float deltaTimeInSeconds){
    for(int i = 0; i < particles.size(); i++){
      cParticle particle = (cParticle)particles.get(i);
      particle.update(deltaTimeInSeconds);
    }
    if(isDead()){
      destroy();
    }
  }
  void onCollision(Sprite s){

  }


  void draw(){
    // update all the particles
    for(int i = 0; i < particles.size(); i++){
      cParticle particle = (cParticle)particles.get(i);
      if(particle.isAlive()){
        particle.draw();
      }
    }
  }
          
  void emit(float numParticles){
    for(int i = 0; i < particles.size(); i++){
      cParticle particle = (cParticle)particles.get(i);
      particle.setPosition(new PVector(position.x, position.y));
      particle.setVelocity(new PVector(random(-30, 30), random(-30, 30)));
      particle.setLifeTime(random(0, 10));
    }
  }
          
  void setParticleLifeTime(float minLifeTime, float maxLifeTime){
    minLifeTimeRange = minLifeTime;
    maxLifeTimeRange = maxLifeTime;
  }
  
  boolean isDead(){

    for(int i = 0; i < particles.size(); i++){
      cParticle particle = (cParticle)particles.get(i);
      if(particle.isAlive()){
        return false;
      }
    }
    return true;
  }
}