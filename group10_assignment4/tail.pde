class tail extends Fish{
tail(boolean big,float x,float speed, color c,float t){
super(big,x,speed,c,t);
}
void flap(){
if(big==true){
beginShape();
vertex(x-170,485);
if(t%2==0){
vertex(x-190,470);
vertex(x-190,500);
vertex(x-170,485);
}
else{
vertex(x-180,470);
vertex(x-180,500);
vertex(x-170,485);
}
endShape();
}
else {
//big not true code
beginShape();
vertex(x-75,530);
if(t%2==0){
vertex(x-85,522);
vertex(x-85,538);
vertex(x-75,530);
}
else{
vertex(x-80,522);
vertex(x-80,538);
vertex(x-85,530);
}
endShape();
}
t++;
x+=speed;
if(x==900)
x=0;
}
}