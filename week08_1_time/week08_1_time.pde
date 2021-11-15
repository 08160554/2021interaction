void setup(){
  size(600,600);
  fill(255,0,0);
  textSize(80);
}
void draw(){
  background(255);
  text(hour()+":"+minute()+":"+second(),50,100);
  text("millis():"+millis()/1000,50,200);
}
