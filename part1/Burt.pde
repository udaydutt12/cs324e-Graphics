class Burt{
    int IQbio; 
    String IQfoster; 
    String classA; 
    int difference;
  
  Burt(int _IQbio, String _IQfoster, String _classA, int _difference){
    IQbio = _IQbio;
    IQfoster = _IQfoster;
    classA = _classA;
    difference = _difference;
  }
  
  void display(float x, float y){
    //println("this.classA: " + this.classA);
    //println("classA: " + classA);
     
    rectMode(CORNERS);
    noStroke();
    fill(255);
    rect(x,y,x+50,y-50);
    fill(0);
    textSize(15);
    text("IQbio: "+ IQbio + "\nIQfoster: " + IQfoster
    + "\nclass: " + classA + "\ndifference: " + difference, x, y);
    
  }
}