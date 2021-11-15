void setup(){
  size(800,600);
  fill(255,0,0);
  textSize(80);
}
void draw(){
  background(#084BB2);
  String hh=nf(hour(),2);
  String mm=nf(minute(),2);
  String ss=nf(second(),2);
  text("現在:"+hh+":"+mm+":"+ss,50,100);
  text("下課:16:40:00",50,200);
  
  int now=hour()*60*60+minute()*60+second();
  int next=16*60*60+40*60+0;
  int remain=next-now;
  text("剩下:"+remain,50,300);
  hh=nf(remain/60/60,2);
  mm=nf(remain/60%60,2);
  ss=nf(remain%60,2);
  text("剩下:"+hh+":"+mm+":"+ss,50,400);
}
