class fin extends Fish{
fin(boolean big,float x,float speed, color c,float t){
super(big,x,speed,c,t);
}
void flap(){
  if(big==true){
beginShape();
vertex(x+25,470);
if(t%4==0){
vertex(x-10,460);
vertex(x-10,500);
}
else if(t%4==1){
vertex(x+13.33,460);
vertex(x+13.33,500);
}
else if(t%4==2){
vertex(x+36.66,460);
vertex(x+36.66,500);
}
else{
vertex(x+60,460);
vertex(x+60,500);
}
vertex(x+25,490);
endShape();
  }
else{
  //big not true code\
beginShape();
vertex(x+12,522);
if(t%4==0){
vertex(x-5,517);
vertex(x-5,533);
}
else if(t%4==1){
vertex(x+6.66,517);
vertex(x+6.66,533);
}
else if(t%4==2){
vertex(x+18.33,517);
vertex(x+18.33,533);
}
else{
vertex(x+30,517);
vertex(x+30,533);
}
vertex(x+12,533);
endShape();
}
t++;
x+=speed;
if(x==900)
x=0;
}
}