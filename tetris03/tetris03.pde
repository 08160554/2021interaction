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
  fill(255,0,0);
  if(grid[y][x]==0)rect(25*x,25*y,25,25);
}
void setup(){
  size(300,500);
}
void draw(){
  background(0);
  for(int x=0;x<12;x++){
    for(int y=0;y<20;y++){
      if(grid[y][x]==1)fill(70,130,180);
      else if(grid[y][x]==2)fill(255,0,0);
      else fill(0);
      rect(x*25,y*25,25,25);
    }
  }
  one(nowX,nowY);
  if(frameCount%20==0){
    if(grid[nowY+1][nowX]==0)nowY++;
    else{
      grid[nowY][nowX]=2;
      nowX=6;nowY=1;
    }
  }
}
int nowX=6,nowY=1;
