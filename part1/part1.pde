Table table;
ArrayList<Burt> BurtList;
Burt b;
int rowCount;

void setup() {
  size(1500,900);
  table = loadTable("Burt.csv", "header");
  BurtList = new ArrayList<Burt>();
  rowCount = table.getRowCount(); 
  for (TableRow row : table.rows()) {
    background(100);
    int IQbio = row.getInt("IQbio");
    String IQfoster = row.getString("IQfoster");
    String classA = row.getString("class");
    int difference = row.getInt("difference");
    Burt b = new Burt(IQbio, IQfoster, classA, difference);
    BurtList.add(b);
    
  }
  
}

void draw(){
   background(255);

   for (int j = 0; j < rowCount; j++){
    float startX = (float(j)) * (width/31.5) + 60.0;
    float startY = height / 2.0;
    Burt b = BurtList.get(j);
    rectMode(CORNERS);
    if (b.classA.equals("low")){
      fill(0,0,255);
    }
    else if (b.classA.equals("medium")){
     fill(0,255,0);
    }
    else if (b.classA.equals("high")){
       fill(255,0,0); 
    }
    stroke(1);
    rect(startX,startY, (j+1)*(width/31.5) + 60, startY - (20*b.difference));
    textSize(15);
    fill(0);
    text(str(j+1),startX + 9,startY + 15);
    if (mouseX >= startX && mouseX <= ((float(j+1)) * (width/31.5) + 60.0)){
      if (b.difference >= 0){
        if (mouseY >= startY - (20*b.difference) && mouseY <= startY){
         b.display(mouseX+5,startY - (20*13) - 100); 
        }
      }
      else if (b.difference < 0){
       if(mouseY <= startY - (20*b.difference) && mouseY >= startY){
        b.display(mouseX+5,startY - (20*(-16)) + 25);  
       }
      }
      //b.display(mouseX+5,100);
    }
   }
   line(60,10,60,height-10);
   for (int x = -16; x <= 13; x++){
     if (x >= 0 && x<10){
       text(" " + str(x),15,(height/2)-(20*x));
     }
     else{
     text(str(x),15,(height/2)-(20*x));
     }
   }
   rectMode(CORNERS);
   fill(255,0,0);
   rect(width - 200,10,width - 190, 20);
   fill(0);
   textSize(15);
   text("high class",width - 180, 20);
   fill(0,255,0);
   rect(width - 200,30,width - 190, 40);
   fill(0);
   textSize(15);
   text("medium class",width - 180, 40);
   fill(0,0,255);
   rect(width - 200,50,width - 190, 60);
   fill(0);
   textSize(15);
   text("low class",width - 180, 60);
   textSize(40);
   text("FosterIQ vs. BioIQ Difference", width/2 - 220, 50);
   textSize(25);
   text("Group Number",width/2 - 150,height/2 + 130);
   textSize(15);
   text("d\ni\nf\nf\ne\nr\ne\nn\nc\ne",45,50);
}
  