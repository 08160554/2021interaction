class Ball{
  float x,y,vx,vy;
  boolean dead;
  Ball(){
    reborn();
  }
  void reborn(){
    x=random(500);
    y=random(100,200);
    vx=random(-4,4);
    vy=random(-4,4);
    dead=false;
  }
  void draw(){
    if(dead==true)return;
    fill(255,0,0); ellipse(x,y,5,5);
    if(dist(mouseX,mouseY,x,y)<5){
      dead=true;
      gameOver=true;
    }
    x=x+vx;
    y=y+vy;
    if(y>500||y<0) reborn();
    if(x>500||x<0) reborn();
  }
}
Ball [] balls;
void setup(){
  size(500,500);
  balls=new Ball[99];
  for(int i=0;i<99;i++){
    balls[i]=new Ball();
  }
}
boolean gameOver=false;
void draw(){
  background(0);
  for(int i=0;i<99;i++){
    balls[i].draw();
  }
  if(gameOver)background(255,0,0);
}
