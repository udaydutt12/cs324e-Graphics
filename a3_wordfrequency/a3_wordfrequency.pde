//Canvas Setup
String[]book;
String[] allwords;
int globalcount=0;
PFont TNR;
void setup()
{
  book=loadStrings("book.txt");
  allwords=loadStrings("allwords.txt");
  size(1000,700);
  background(255);//change this as you wish
  frameRate(60);//change this as you wish
  TNR = createFont("Times New Roman",12);
  textFont(TNR);
}
void draw()
{
  createAxis();  
  for(int index=0;index<globalcount;index++)
  {
      float xpos=0;float ypos=700;
      stroke(random(0,255),random(0,255),random(0,255));
      for(int bookidx=0;bookidx<book.length;bookidx++)
      {
        int instances_inline=ScanForWord(allwords[index],book[bookidx]);
        if (instances_inline==0)
          {
            line(xpos,ypos,xpos+1000.0/book.length,ypos);
            xpos+=1000.0/book.length;
          }
        else
          {
            line(xpos,ypos,xpos+1000.0/book.length,ypos-instances_inline*7.0/83.0);
            xpos+=1000.0/book.length;
            ypos-=instances_inline*7.0/83.0;
          }
      }
    }
    globalcount+=3;//change this as you wish
}

int ScanForWord(String word,String line)
{
  int instances=0;
  int index=line.indexOf(word);
  while (index!=-1)
  {
    instances++;    
    if ((index+word.length())<line.length()&&Character.isLetter(line.charAt(index+word.length())))
      instances--;
    else if(index==0)
    {}
    else if(Character.isLetter(line.charAt(index-1)))
      instances--;
    line=line.substring(index+1);
    index=line.indexOf(word);
  }
  return instances; 
}

void createAxis()
{
  fill(0);
  stroke(0);
  strokeWeight(5);
  text("X-Axis = Length of Book", 40, 60);
  text("Y-Axis = Frequency",850,100);
  line(0,5,1000,5);
  line(995,0,995,700);
  line(0,5,0,15);
  text("0%", 0,30);
  line(500,5,500,15);
  text("50%",495,30);
  line(250,5,250,15);
  text("25%",245,30);
  line(750,5,750,15);
  text("75%",745,30);
  line(990,5,990,15);
  text("100%",965,30);
  line(995,695,985,695);
  text("0",970,695);
  line(995,695-77-7.0/9.0,985,695-77-7.0/9.0);
  text("1000",950,695-77-7.0/9.0);
  line(995,695-2.0*(77-7.0/9.0),985,695-2.0*(77-7.0/9.0));
  text("2000",950,695-2.0*(77-7.0/9.0));
  line(995,695-3.0*(77-7.0/9.0),985,695-3.0*(77-7.0/9.0));
  text("3000",950,695-3.0*(77-7.0/9.0));
  line(995,695-4.0*(77+7.0/9.0),985,695-4.0*(77+7.0/9.0));
  text("4000",950,695-4.0*(77-7.0/9.0));
  line(995,695-5.0*(77+7.0/9.0),985,695-5.0*(77+7.0/9.0));
  text("5000",950,695-5.0*(77+7.0/9.0));
  line(995,695-6.0*(77-7.0/9.0),985,695-6.0*(77-7.0/9.0));
  text("6000",950,695-6.0*(77-7.0/9.0));
  line(995,695-7.0*(77+7.0/9.0),985,695-7.0*(77+7.0/9.0));
  text("7000",950,695-7.0*(77-7.0/9.0));
  line(995,695-8.0*(77-7.0/9.0),985,695-8.0*(77-7.0/9.0));
  text("8000",950,695-8.0*(77-7.0/9.0));
  
}