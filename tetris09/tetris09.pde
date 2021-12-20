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
//int [][]L0={
//  {0,1,0,0},
//  {0,1,0,0},
//  {0,1,1,0},
//  {0,0,0,0}};
//int [][]L1={
//  {0,0,1,0},
//  {1,1,1,0},
//  {0,0,0,0},
//  {0,0,0,0}};
//int [][]L2={
//  {1,1,0,0},
//  {0,1,0,0},
//  {0,1,0,0},
//  {0,0,0,0}};
//int [][]L3={
//  {0,0,0,0},
//  {1,1,1,0},
//  {1,0,0,0},
//  {0,0,0,0}};
//int [][]I0={
//  {0,1,0,0},
//  {0,1,0,0},
//  {0,1,0,0},
//  {0,1,0,0}};
//int [][]I1={
//  {0,0,0,0},
//  {0,0,0,0},
//  {1,1,1,1},
//  {0,0,0,0}};
//int [][]J0={
//  {0,1,0,0},
//  {0,1,0,0},
//  {1,1,0,0},
//  {0,0,0,0}};
//int [][]J1={
//  {1,0,0,0},
//  {1,1,1,0},
//  {0,0,0,0},
//  {0,0,0,0}};
//int [][]J2={
//  {0,1,1,0},
//  {0,1,0,0},
//  {0,1,0,0},
//  {0,0,0,0}};
//int [][]J3={
//  {0,0,0,0},
//  {1,1,1,0},
//  {0,0,1,0},
//  {0,0,0,0}};
//int [][]T0={
//  {0,0,0,0},
//  {0,1,0,0},
//  {1,1,1,0},
//  {0,0,0,0}};
//int [][]T1={
//  {0,1,0,0},
//  {1,1,0,0},
//  {0,1,0,0},
//  {0,0,0,0}};
//int [][]T2={
//  {0,0,0,0},
//  {1,1,1,0},
//  {0,1,0,0},
//  {0,0,0,0}};
//int [][]T3={
//  {0,1,0,0},
//  {0,1,1,0},
//  {0,1,0,0},
//  {0,0,0,0}};
//int [][]S0={
//  {0,0,0,0},
//  {0,1,1,0},
//  {1,1,0,0},
//  {0,0,0,0}};
//int [][]S1={
//  {1,0,0,0},
//  {1,1,0,0},
//  {0,1,0,0},
//  {0,0,0,0}};
//int [][]Z0={
//  {0,0,0,0},
//  {1,1,0,0},
//  {0,1,1,0},
//  {0,0,0,0}};
//int [][]Z1={
//  {0,1,0,0},
//  {1,1,0,0},
//  {1,0,0,0},
//  {0,0,0,0}};
//void testDelete(){
//  for(int i=11;i>=0;i--){
//    int bad=0;
//    for(int j=0;j<20;j++){
//      if(grid[i][j]!=0)bad++;
//    }
//    if(bad==12){
//      for(int ii=i;ii>=1;ii++){
//        for(int j=0;j<12;j++)grid[ii][j]=grid[ii-1][j];
//      }
//    }
//  }
//}
int nextShape=0;
boolean Lsafe(int x,int y){
  if(grid[y][x]==0 && grid[y+1][x]==0 && grid[y+2][x]==0 && grid[y+2][x+1]==0)return true;
  return false;
}
void L(int x,int y){
  fill(255,165,79);
  if(Lsafe(x,y) ){
    rect(25*x    ,25*y    ,25,25);
    rect(25*x    ,25*(y+1),25,25);
    rect(25*x    ,25*(y+2),25,25);
    rect(25*(x+1),25*(y+2),25,25);
  }
}
boolean Osafe(int x,int y){
  if(grid[y][x]==0 && grid[y+1][x+1]==0 && grid[y+1][x]==0 && grid[y][x+1]==0)return true;
  return false;
}
void O(int x,int y){
  fill(238,230,133);
  if(Osafe(x,y) ){
    rect(25*x    ,25*y    ,25,25);
    rect(25*x    ,25*(y+1),25,25);
    rect(25*(x+1),25*y    ,25,25);
    rect(25*(x+1),25*(y+1),25,25);
  }
}
boolean Isafe(int x,int y){
  if(grid[y][x]==0 && grid[y][x+1]==0 && grid[y][x+2]==0 && grid[y][x+3]==0)return true;
  return false;
}
void I(int x,int y){
  fill(176,226,255);
  if(Isafe(x,y) ){
    rect(25*x    ,25*y,25,25);
    rect(25*(x+1),25*y,25,25);
    rect(25*(x+2),25*y,25,25);
    rect(25*(x+3),25*y,25,25);
  }
}
boolean Jsafe(int x,int y){
  if(grid[y][x+1]==0 && grid[y+1][x+1]==0 && grid[y+2][x+1]==0 && grid[y+2][x]==0)return true;
  return false;
}
void J(int x,int y){
  fill(0,0,139);
  if(Jsafe(x,y) ){
    rect(25*x    ,25*(y+2),25,25);
    rect(25*(x+1),25*(y+1),25,25);
    rect(25*(x+1),25*(y+2),25,25);
    rect(25*(x+1),25*y,25,25);
  }
}
boolean Tsafe(int x,int y){
  if(grid[y][x]==0 && grid[y][x+1]==0 && grid[y][x+2]==0 && grid[y+1][x+1]==0)return true;
  return false;
}
void T(int x,int y){
  fill(205,181,205);
  if(Tsafe(x,y) ){
    rect(25*x    ,25*y,25,25);
    rect(25*(x+1),25*y,25,25);
    rect(25*(x+2),25*y,25,25);
    rect(25*(x+1),25*(y+1),25,25);
  }
}
boolean Ssafe(int x,int y){
  if(grid[y][x]==0 && grid[y+1][x]==0 && grid[y+1][x+1]==0 && grid[y+2][x+1]==0)return true;
  return false;
}
void S(int x,int y){
  fill(193,255,193);
  if(Ssafe(x,y) ){
    rect(25*x    ,25*y,25,25);
    rect(25*x,25*(y+1),25,25);
    rect(25*(x+1),25*(y+1),25,25);
    rect(25*(x+1),25*(y+2),25,25);
  }
}
boolean Zsafe(int x,int y){
  if(grid[y+1][x+1]==0 && grid[y+2][x+1]==0 && grid[y+2][x]==0 && grid[y+3][x]==0)return true;
  return false;
}
void Z(int x,int y){
  fill(250,128,124);
  if(Zsafe(x,y) ){
    rect(25*x    ,25*(y+3),25,25);
    rect(25*x,25*(y+2),25,25);
    rect(25*(x+1),25*(y+1),25,25);
    rect(25*(x+1),25*(y+2),25,25);
  }
}
void setup(){
  size(300,500);
  nextShape=int(random(6));
}
int b=0;
float []vx={0,0,300,500};
void draw(){
  background(0);
  if(nextShape==0)L(nowX,nowY);
  else if(nextShape==1)O(nowX,nowY);
  else if(nextShape==2)I(nowX,nowY);
  else if(nextShape==3)J(nowX,nowY);
  else if(nextShape==4)T(nowX,nowY);
  else if(nextShape==5)S(nowX,nowY);
  else if(nextShape==6)Z(nowX,nowY);
  
  for(int x=0;x<12;x++){
    for(int y=0;y<20;y++){
      if(grid[y][x]==1)fill(70,130,180);
      else if(grid[y][x]==2)fill(250,128,124);
      else if(grid[y][x]==3)fill(255,165,79);
      else if(grid[y][x]==4)fill(238,230,133);
      else if(grid[y][x]==5)fill(176,226,255);
      else if(grid[y][x]==6)fill(0,0,139);
      else if(grid[y][x]==7)fill(205,181,205);
      else if(grid[y][x]==8)fill(193,255,193);
      else if(grid[y][x]==9)fill(250,128,124);
      else fill(0);
      rect(x*25,y*25,25,25);
      if(x>300)x=-x;
      if(x<0)x=-x; 
    }
  }
  L(nowX,nowY);
  if(frameCount%20==0){
    //if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
    //else{....}
    if(nextShape==0 && Lsafe(nowX,nowY+1))nowY++;
    else{
      
      grid[nowY][nowX]=3;
      grid[nowY+1][nowX]=3;
      grid[nowY+2][nowX]=3;
      grid[nowY+2][nowX+1]=3;
      nowX=6;nowY=1;
 //     testDelete();
      nextShape=int(random(6));
    }
  }
  O(nowX,nowY);
  if(frameCount%20==0){
    //if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
    //else{....}
    if(nextShape==1 && Osafe(nowX,nowY+1))nowY++;
    else{      
      grid[nowY][nowX]=4;
      grid[nowY+1][nowX]=4;
      grid[nowY][nowX+1]=4;
      grid[nowY+1][nowX+1]=4;
      nowX=6;nowY=1;
   //   testDelete();
      nextShape=int(random(6));
    }
  }
  I(nowX,nowY);
  if(frameCount%20==0){
    //if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
    //else{....}
    if(nextShape==2 && Isafe(nowX,nowY+1))nowY++;
    else{      
      grid[nowY][nowX]=5;
      grid[nowY][nowX+1]=5;
      grid[nowY][nowX+2]=5;
      grid[nowY][nowX+3]=5;
      nowX=6;nowY=1;
   //   testDelete();
      nextShape=int(random(6));
    }
  }
  J(nowX,nowY);
  if(frameCount%20==0){
    //if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
    //else{....}
    if(nextShape==3 && Jsafe(nowX,nowY+1))nowY++;
    else{      
      grid[nowY+2][nowX]=6;
      grid[nowY][nowX+1]=6;
      grid[nowY+1][nowX+1]=6;
      grid[nowY+2][nowX+1]=6;
      nowX=6;nowY=1;
    //  testDelete();
      nextShape=int(random(6));
    }
  }
  T(nowX,nowY);
  if(frameCount%20==0){
    //if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
    //else{....}
    if(nextShape==4 && Tsafe(nowX,nowY+1))nowY++;
    else{      
      grid[nowY][nowX]=7;
      grid[nowY][nowX+1]=7;
      grid[nowY][nowX+2]=7;
      grid[nowY+1][nowX+1]=7;
      nowX=6;nowY=1;
   //   testDelete();
      nextShape=int(random(6));
    }
  }
  S(nowX,nowY);
  if(frameCount%20==0){
    //if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
    //else{....}
    if(nextShape==5 && Ssafe(nowX,nowY+1))nowY++;
    else{      
      grid[nowY][nowX]=8;
      grid[nowY+1][nowX+1]=8;
      grid[nowY+2][nowX+1]=8;
      grid[nowY+1][nowX+0]=8;
      nowX=6;nowY=1;
   //   testDelete();
      nextShape=int(random(6));
    }
  }
  Z(nowX,nowY);
  if(frameCount%20==0){
   // if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
  //  else{  }
    if(nextShape==6 && Zsafe(nowX,nowY+1))nowY++;
    else{
      grid[nowY+3][nowX]=9;
      grid[nowY+2][nowX]=9;
      grid[nowY+1][nowX+1]=9;
      grid[nowY+2][nowX+1]=9;
      nowX=6;nowY=1;
   //   testDelete();
      nextShape=int(random(6));
    }
  }
}
//boolean testSafe( int shape, int x, int y, int angle ){
//  if(shape==1){
//    testSafeShape1(x, y, angle);
    
    
//  }else if(shape==2){
//    testSafeShape2(x,y, angle);
//  }
//  return true;//safe
//}
int nowX=6,nowY=1;
void keyPressed(){
  // if(keyCode==RIGHT && testSafe( nowShape, nowX+1, nowY, nowAngle)==true ){ b=3; nowX++; } 
  if(keyCode==RIGHT && grid[nowY][nowX+1]==0 ){ b=3; nowX++; }
  if(keyCode==LEFT && grid[nowY][nowX-1]==0 ) { b=2; nowX--; }
  if(keyCode==UP) { b=1; nowY--; }
  if(keyCode==DOWN){ b=0; nowY++; }
}
