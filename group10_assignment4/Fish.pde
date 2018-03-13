class Fish{
float x; float speed;color c1;float t;boolean big;
Fish(boolean big,float x,float speed, color c,float t){
 this.x=x;
 this.speed=speed;
 this.c1=c;
 this.t=t;
 this.big=big;
}
void display(){
fill(c1);
if(big==true){
ellipse(x,485,170,40);
ellipse(80+x,485,10,10);
}
else{
ellipse(x,530,75,20);
ellipse(41+x,530,5,5);
}

}
void move(){
 if (x>=900){
 x=0;
 }
 else x+=speed;
}
}