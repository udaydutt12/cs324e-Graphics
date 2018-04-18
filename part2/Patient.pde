class Patient{
   String treat;
   String sex;
   String improved;
   int age;
   float xPos;
   float yPos;
   float spacing;

   Patient(String _treat, String _sex, String _improved, int _age) {
    treat = _treat;
    sex = _sex;
    improved = _improved;
    age = _age;
    if (treat.equals("Placebo")){
     if (improved.equals("None")){
       xPos = 150;
     }
     
     else if (improved.equals("Some")){
       xPos = 350;
     }
     else if (improved.equals("Marked")){
       xPos = 550;
     }
   }
   else if (treat.equals("Treated")){
     if (improved.equals("None")){

       xPos = 900;
     }
     
     else if (improved.equals("Some")){

      xPos = 1100;
     }
     else if (improved.equals("Marked")){
 
      xPos = 1300;
     }
     
     
   }
    spacing = height / 60;
    yPos = (spacing * (66-age)) + 250;
     
   }
   void display(float x, float y){
    rectMode(CORNERS);
    noStroke();
    fill(255);
    rect(x+5,y+50,x+50,y);
    fill(0);
    textSize(15);
    text("Age: " + age + "\nTreatment: " + treat +
         "\nimproved? " + improved, x+5, y+50);
    
  }
  
  void draw(){
    float spacing = height / 60;
    float yPos = (spacing * (66-age)) + 250;
    if (treat.equals("Placebo")){
     if (improved.equals("None")){
       stroke(255,0,0);
       xPos = 150;
     }
     
     else if (improved.equals("Some")){
       stroke(127,127,0);
       xPos = 350;
     }
     else if (improved.equals("Marked")){
       stroke(0,255,0);  
       xPos = 550;
     }
   }
   else if (treat.equals("Treated")){
     if (improved.equals("None")){
       stroke(255,0,0);
       xPos = 900;
     }
     
     else if (improved.equals("Some")){
      stroke(127,127,0); 
      xPos = 1100;
     }
     else if (improved.equals("Marked")){
      stroke(0,255,0); 
      xPos = 1300;
     }
     
     
   }
   
   strokeWeight(20);
   point(xPos,yPos);
   textSize(15);
   //text(age,50,yPos);
  }
}