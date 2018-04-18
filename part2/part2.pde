Table table;
ArrayList<Patient> PatientList;
Patient p;
int rowCount;

void setup() {
  size(1500,950);
  table = loadTable("Arthritis.csv", "header");
  PatientList = new ArrayList<Patient>();
  rowCount = table.getRowCount(); 
  for (TableRow row : table.rows()) {
    String treat = row.getString("Treatment");
    String sex = row.getString("Sex");
    String improved = row.getString("Improved");
    int age = row.getInt("Age");
    Patient p = new Patient(treat, sex, improved, age);
    PatientList.add(p);
    
  }
  
}

void draw(){
 background(255);
 for (int i = 0; i < rowCount; i++){
   Patient p = PatientList.get(i);
   p.draw();
   if (mouseX >= (p.xPos -4) && mouseX <= (p.xPos +4)
       && mouseY >= (p.yPos - 4) && mouseY <= (p.yPos + 4)){
     p.display(mouseX,mouseY); 
   }
   //p.display(50,50);   
 }
 stroke(0);
 strokeWeight(4);
 line(0,70,1500,70);
 fill(0);
 textSize(50);
 text("Placebo",260,60);
 text("Treatment",1000,60);
 line(750,-10,750,1100);
 for (int j = 23; j <= 74; j++){
   float pos = ((height / 60) * (66-j)) + 250;
   textSize(15);
   fill(0);
   text(j,50,pos);
   
 }
 textSize(30);
 text("Age",40, 100);
 text("Improved",275,100);
 text("Improved",1050,100);
 textSize(20);
 text("None",130,height-15);
 text("Some",320,height-15);
 text("Marked", 510,height-15);
 text("None",130+750,height-15);
 text("Some",320+750,height-15);
 text("Marked", 510+750,height-15);
 
}