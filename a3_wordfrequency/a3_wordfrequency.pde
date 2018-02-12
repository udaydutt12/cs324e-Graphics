//Canvas Setup
String[]book;
String[] allwords;
int globalcount=0;
void setup()
{
  book=loadStrings("book.txt");
  allwords=loadStrings("allwords.txt");
  size(1000,700);
  background(51);//change this as you wish
  frameRate(60);//change this as you wish
}
void draw()
{
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
            ypos-=instances_inline*7.0/90.0;
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