int[][]grid={
  {1,1,1,1,1,1,1,1,1,1,1,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,1,1,1,1,1,1,1,1,1,1,1}
};
void one(int x,int y){
  fill(250,128,124);
  if(grid[y][x]==0)rect(25*x,25*y,25,25);
}
void setup(){
  size(300,500);
}
int b=0;
float []vx={0,0,300,500};
void draw(){
  background(0);
  for(int x=0;x<12;x++){
    for(int y=0;y<20;y++){
      if(grid[y][x]==1)fill(70,130,180);
      else if(grid[y][x]==2)fill(250,128,124);
      else fill(0);
      rect(x*25,y*25,25,25);
      if(x>300)x=-x;
      if(x<0)x=-x; 
    }
  }
  one(nowX,nowY);
  if(frameCount%20==0){
    //if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
    //else{....}
    if(grid[nowY+1][nowX]==0)nowY++;
    else{
      grid[nowY][nowX]=2;
      nowX=6;nowY=1;
    }
  }
}
boolean testSafe( int shape, int x, int y, int angle ){
  if(shape==1){
    //testSafeShape1(x, y, angle);
    
  }else if(shape==2){
    //testSafeShape2(x,y, angle);
  }
  return true;//safe
}
int nowX=6,nowY=1;
void keyPressed(){
  // if(keyCode==RIGHT && testSafe( nowShape, nowX+1, nowY, nowAngle)==true ){ b=3; nowX++; } 
  if(keyCode==RIGHT && grid[nowY][nowX+1]==0 ){ b=3; nowX++; }
  if(keyCode==LEFT && grid[nowY][nowX-1]==0 ) { b=2; nowX--; }
  if(keyCode==UP) { b=1; nowY--; }
  if(keyCode==DOWN){ b=0; nowY++; }
}
