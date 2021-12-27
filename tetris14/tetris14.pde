int[][]grid={
  {1,0,0,0,0,0,0,0,0,0,0,1},//  {1,1,1,1,1,1,1,1,1,1,1,1},
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
int [][]L0={
  {1,0,0,0},
  {1,0,0,0},
  {1,1,0,0},
  {0,0,0,0}};
int [][]L1={
  {0,0,1,0},
  {1,1,1,0},
  {0,0,0,0},
  {0,0,0,0}};
int [][]L2={
  {1,1,0,0},
  {0,1,0,0},
  {0,1,0,0},
  {0,0,0,0}};
int [][]L3={
  {1,1,1,0},
  {1,0,0,0},
  {0,0,0,0},
  {0,0,0,0}};
int [][]O0={
  {1,1,0,0},
  {1,1,0,0},
  {0,0,0,0},
  {0,0,0,0}};
int [][]I0={
  {1,0,0,0},
  {1,0,0,0},
  {1,0,0,0},
  {1,0,0,0}};
int [][]I1={
  {1,1,1,1},
  {0,0,0,0},
  {0,0,0,0},
  {0,0,0,0}};
int [][]J0={
  {0,1,0,0},
  {0,1,0,0},
  {1,1,0,0},
  {0,0,0,0}};
int [][]J1={
  {1,0,0,0},
  {1,1,1,0},
  {0,0,0,0},
  {0,0,0,0}};
int [][]J2={
  {1,1,0,0},
  {1,0,0,0},
  {1,0,0,0},
  {0,0,0,0}};
int [][]J3={
  {1,1,1,0},
  {0,0,1,0},
  {0,0,0,0},
  {0,0,0,0}};
int [][]T0={
  {1,1,1,0},
  {0,1,0,0},
  {0,0,0,0},
  {0,0,0,0}};
int [][]T1={
  {0,1,0,0},
  {1,1,1,0},
  {0,0,0,0},
  {0,0,0,0}};
int [][]T2={
  {0,1,0,0},
  {1,1,0,0},
  {0,1,0,0},
  {0,0,0,0}};
int [][]T3={
  {1,0,0,0},
  {1,1,0,0},
  {1,0,0,0},
  {0,0,0,0}};
int [][]S0={
  {1,0,0,0},
  {1,1,0,0},
  {0,1,0,0},
  {0,0,0,0}};
int [][]S1={
  {0,1,1,0},
  {1,1,0,0},
  {0,0,0,0},
  {0,0,0,0}};
int [][]Z0={
  {1,1,0,0},
  {0,1,1,0},
  {0,0,0,0},
  {0,0,0,0}};
int [][]Z1={
  {0,1,0,0},
  {1,1,0,0},
  {1,0,0,0},
  {0,0,0,0}};
void testDeleteAndNext(){
  testDelete();
  nextShape=int(random(19));
  if( random(2)<1 ) nextShape=1;
  else if(random(2)<2) nextShape=6;
  else nextShape=11;
  nextShape=1;
  println(nextShape);
}
void testDelete(){
  for(int i=18;i>0;i--){//modified
    int bad=0;
    for(int j=1;j<11;j++){//modified
      if(grid[i][j]!=0)bad++;
    }
    if(bad==10){//這裡的 i,j有弄反了!!!
      for(int ii=i;ii>1;ii--){//有錯
        for(int j=1;j<11;j++)grid[ii][j]=grid[ii-1][j];
      }//這裡的 j<12才對,或是改用i,總之要想想!!!!
      i++;
    }
  }
}
int nextShape=0;
boolean Lsafe(int x,int y){
  if(grid[y][x]==0 && grid[y+1][x]==0 && grid[y+2][x]==0 && grid[y+2][x+1]==0)return true;
  return false;
}
void L0(int x,int y){
  fill(255,165,79);
  if(Lsafe(x,y) ){
    rect(25*x    ,25*y    ,25,25);
    rect(25*x    ,25*(y+1),25,25);
    rect(25*x    ,25*(y+2),25,25);
    rect(25*(x+1),25*(y+2),25,25);
  }
}
void L1(int x,int y){
  fill(255,165,79);
  if(Lsafe(x,y) ){
    rect(25*x    ,25*(y+1),25,25);
    rect(25*(x+1),25*(y+1),25,25);
    rect(25*(x+2),25*y    ,25,25);
    rect(25*(x+2),25*(y+1),25,25);
  }
}
void L2(int x,int y){
  fill(255,165,79);
  if(Lsafe(x,y) ){
    rect(25*x    ,25*y    ,25,25);
    rect(25*(x+1),25*(y+1),25,25);
    rect(25*(x+1),25*y    ,25,25);
    rect(25*(x+1),25*(y+2),25,25);
  }
}
void L3(int x,int y){
  fill(255,165,79);
  if(Lsafe(x,y) ){
    rect(25*x    ,25*y    ,25,25);
    rect(25*(x+1),25*y    ,25,25);
    rect(25*(x+2),25*y    ,25,25);
    rect(25*x    ,25*(y+1),25,25);
  }
}
boolean Osafe(int x,int y){
  if(grid[y][x]==0 && grid[y+1][x+1]==0 && grid[y+1][x]==0 && grid[y][x+1]==0)return true;
  return false;
}
void O0(int x,int y){
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
void I0(int x,int y){
  fill(176,226,255);
  if(Isafe(x,y) ){
    rect(25*x    ,25*y,25,25);
    rect(25*(x+1),25*y,25,25);
    rect(25*(x+2),25*y,25,25);
    rect(25*(x+3),25*y,25,25);
  }
}
void I1(int x,int y){
  fill(176,226,255);
  if(Isafe(x,y) ){
    rect(25*x    ,25*y,25,25);
    rect(25*x    ,25*(y+1),25,25);
    rect(25*x    ,25*(y+2),25,25);
    rect(25*x    ,25*(y+3),25,25);
  }
}
boolean Jsafe(int x,int y){
  if(grid[y][x+1]==0 && grid[y+1][x+1]==0 && grid[y+2][x+1]==0 && grid[y+2][x]==0)return true;
  return false;
}
void J0(int x,int y){
  fill(106,90,205);
  if(Jsafe(x,y) ){
    rect(25*x    ,25*(y+2),25,25);
    rect(25*(x+1),25*(y+1),25,25);
    rect(25*(x+1),25*(y+2),25,25);
    rect(25*(x+1),25*y,25,25);
  }
}
void J1(int x,int y){
  fill(106,90,205);
  if(Jsafe(x,y) ){
    rect(25*x    ,25*y    ,25,25);
    rect(25*x    ,25*(y+1),25,25);
    rect(25*(x+1),25*(y+1),25,25);
    rect(25*(x+2),25*(y+1),25,25);
  }
}
void J2(int x,int y){
  fill(106,90,205);
  if(Jsafe(x,y) ){
    rect(25*x    ,25*y    ,25,25);
    rect(25*x    ,25*(y+2),25,25);
    rect(25*x    ,25*(y+1),25,25);
    rect(25*(x+1),25*y,25,25);
  }
}
void J3(int x,int y){
  fill(106,90,205);
  if(Jsafe(x,y) ){
    rect(25*x    ,25*y,25,25);
    rect(25*(x+2),25*(y+1),25,25);
    rect(25*(x+1),25*y,25,25);
    rect(25*(x+2),25*y,25,25);
  }
}
boolean Tsafe(int x,int y){
  if(grid[y][x]==0 && grid[y][x+1]==0 && grid[y][x+2]==0 && grid[y+1][x+1]==0)return true;
  return false;
}
void T0(int x,int y){
  fill(205,181,205);
  if(Tsafe(x,y) ){
    rect(25*x    ,25*y,25,25);
    rect(25*(x+1),25*y,25,25);
    rect(25*(x+2),25*y,25,25);
    rect(25*(x+1),25*(y+1),25,25);
  }
}
void T1(int x,int y){
  fill(205,181,205);
  if(Tsafe(x,y) ){
    rect(25*(x+1),25*(y+1),25,25);
    rect(25*x    ,25*(y+1),25,25);
    rect(25*(x+1),25*y,25,25);
    rect(25*(x+2),25*(y+1),25,25);
  }
}
void T2(int x,int y){
  fill(205,181,205);
  if(Tsafe(x,y) ){
    rect(25*x    ,25*(y+1),25,25);
    rect(25*(x+1),25*y,25,25);
    rect(25*(x+1),25*(y+1),25,25);
    rect(25*(x+1),25*(y+2),25,25);
  }
}
void T3(int x,int y){
  fill(205,181,205);
  if(Tsafe(x,y) ){
    rect(25*x    ,25*y,25,25);
    rect(25*x    ,25*(y+1),25,25);
    rect(25*x    ,25*(y+2),25,25);
    rect(25*(x+1),25*(y+1),25,25);
  }
}
boolean Ssafe(int x,int y){
  if(grid[y][x]==0 && grid[y+1][x]==0 && grid[y+1][x+1]==0 && grid[y+2][x+1]==0)return true;
  return false;
}
void S0(int x,int y){
  fill(193,255,193);
  if(Ssafe(x,y) ){
    rect(25*x    ,25*y,25,25);
    rect(25*x    ,25*(y+1),25,25);
    rect(25*(x+1),25*(y+1),25,25);
    rect(25*(x+1),25*(y+2),25,25);
  }
}
void S1(int x,int y){
  fill(193,255,193);
  if(Ssafe(x,y) ){
    rect(25*(x+1),25*y,25,25);
    rect(25*(x+2),25*y,25,25);
    rect(25*x    ,25*(y+1),25,25);
    rect(25*(x+1),25*(y+1),25,25);
  }
}
boolean Zsafe(int x,int y){
  if(grid[y+1][x+1]==0 && grid[y+2][x+1]==0 && grid[y+2][x]==0 && grid[y+3][x]==0)return true;
  return false;
}
void Z0(int x,int y){
  fill(250,128,124);
  if(Zsafe(x,y) ){
    rect(25*x    ,25*y    ,25,25);
    rect(25*(x+2),25*(y+1),25,25);
    rect(25*(x+1),25*y    ,25,25);
    rect(25*(x+1),25*(y+1),25,25);
  }
}
void Z1(int x,int y){
  fill(250,128,124);
  if(Zsafe(x,y) ){
    rect(25*x    ,25*(y+1),25,25);
    rect(25*x    ,25*(y+2),25,25);
    rect(25*(x+1),25*y    ,25,25);
    rect(25*(x+1),25*(y+1),25,25);
  }
}
void setup(){
  size(300,500);
  nextShape=int(random(19));
  nextShape=1;
  println(nextShape);
}
int b=0;
float []vx={0,0,300,500};
int rot=0;
void draw(){
  background(0);
  if(nextShape==0)L0(nowX,nowY);
  else if(nextShape==1)O0(nowX,nowY);
  else if(nextShape==2)I0(nowX,nowY);
  else if(nextShape==3)J0(nowX,nowY);
  else if(nextShape==4)T0(nowX,nowY);
  else if(nextShape==5)S0(nowX,nowY);
  else if(nextShape==6)Z0(nowX,nowY);
  
  else if(nextShape==7)L1(nowX,nowY);
  else if(nextShape==8)I1(nowX,nowY);
  else if(nextShape==9)J1(nowX,nowY);
  else if(nextShape==10)T1(nowX,nowY);
  else if(nextShape==11)S1(nowX,nowY);
  else if(nextShape==12)Z1(nowX,nowY);
  
  else if(nextShape==13)L2(nowX,nowY);  
  else if(nextShape==14)J2(nowX,nowY);
  else if(nextShape==15)T2(nowX,nowY);
  
  else if(nextShape==16)L3(nowX,nowY);
  else if(nextShape==17)J3(nowX,nowY);
  else if(nextShape==18)T3(nowX,nowY);
  else if(nextShape==19)L1(nowX,nowY);
  
  for(int x=0;x<12;x++){
    for(int y=0;y<20;y++){
      if(grid[y][x]==1)fill(70,130,180);//wall
      else if(grid[y][x]==2)fill(250,128,124);
      else if(grid[y][x]==3 || grid[y][x]==10 || grid[y][x]==16 || grid[y][x]==19)fill(255,165,79); //orangeL
      else if(grid[y][x]==4)fill(238,230,133);//yellowO
      else if(grid[y][x]==5 || grid[y][x]==11)fill(176,226,255);//blueI
      else if(grid[y][x]==6 || grid[y][x]==12 || grid[y][x]==17 || grid[y][x]==20)fill(106,90,205);//deepblueJ
      else if(grid[y][x]==7 || grid[y][x]==13 || grid[y][x]==18 || grid[y][x]==21)fill(205,181,205);//purpleT
      else if(grid[y][x]==8 || grid[y][x]==14)fill(193,255,193);//greenS
      else if(grid[y][x]==9 || grid[y][x]==15)fill(250,128,124);//pinkZ
      else fill(0);
      rect(x*25,y*25,25,25);
      if(x>300)x=-x;
      if(x<0)x=-x; 
    }
  }
  if(rot==0){
    if(nextShape==0){
      L0(nowX,nowY);
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
          testDeleteAndNext();
        }
      }
    }
  }
  if(rot==0||rot==1||rot==2||rot==3){
    if(nextShape==1){
      O0(nowX,nowY);
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
          testDeleteAndNext();
        }
      }
    }
  }
  if(rot==0||rot==2){
    if(nextShape==2){
      I0(nowX,nowY);
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
          testDeleteAndNext();
        }
      }
    }
  }
  if(rot==0){
    if(nextShape==3){
      J0(nowX,nowY);
      if(frameCount%20==0){
        //if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
        //else{....}
        if(nextShape==3 && Jsafe(nowX,nowY+1))nowY++;
        else{      
          grid[nowY+2][nowX]=6;
          grid[nowY+1][nowX+1]=6;
          grid[nowY+2][nowX+1]=6;
          grid[nowY][nowX+1]=6;
          nowX=6;nowY=1;
          testDeleteAndNext();
        }
      }
    }
  }
  if(rot==0){
    if(nextShape==4){
      T0(nowX,nowY);
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
          testDeleteAndNext();
        }
      }
    }
  }
  if(rot==0||rot==2){
    if(nextShape==5){
      S0(nowX,nowY);
      if(frameCount%20==0){
        //if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
        //else{....}
        if(nextShape==5 && Ssafe(nowX,nowY+1))nowY++;
        else{      
          grid[nowY][nowX]=8;
          grid[nowY+1][nowX]=8;
          grid[nowY+1][nowX+1]=8;
          grid[nowY+2][nowX+1]=8;
          nowX=6;nowY=1;
          testDeleteAndNext();
        }
      }
    }
  }
  if(rot==0||rot==2){
    if(nextShape==6){
      Z0(nowX,nowY);
      if(frameCount%20==0){
       // if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
      //  else{  }
        if(nextShape==6 && Zsafe(nowX,nowY+1))nowY++;
        else{
          grid[nowY][nowX]=9;
          grid[nowY+1][nowX+2]=9;
          grid[nowY][nowX+1]=9;
          grid[nowY+1][nowX+1]=9;
          nowX=6;nowY=1;
          testDeleteAndNext();
        }
      }
    }
  }
  if(rot==1){
    if(nextShape==7){
      L1(nowX,nowY);
      if(frameCount%20==0){
       // if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
      //  else{  }
        if(nextShape==6 && Zsafe(nowX,nowY+1))nowY++;
        else{
          grid[nowY+1][nowX]=10;
          grid[nowY+1][nowX+1]=10;
          grid[nowY][nowX+2]=10;
          grid[nowY+1][nowX+2]=10;
          nowX=6;nowY=1;
          testDeleteAndNext();
        }
      }
    }
  }
  if(rot==1||rot==3){
    if(nextShape==8){
      I1(nowX,nowY);
      if(frameCount%20==0){
       // if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
      //  else{  }
        if(nextShape==6 && Zsafe(nowX,nowY+1))nowY++;
        else{
          grid[nowY+3][nowX]=11;
          grid[nowY+2][nowX]=11;
          grid[nowY+1][nowX]=11;
          grid[nowY][nowX]=11;
          nowX=6;nowY=1;
          testDeleteAndNext();
        }
      }
    }
  }
  if(rot==1){
    if(nextShape==9){
      J1(nowX,nowY);
      if(frameCount%20==0){
       // if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
      //  else{  }
        if(nextShape==6 && Zsafe(nowX,nowY+1))nowY++;
        else{
          grid[nowY][nowX]=12;
          grid[nowY+1][nowX]=12;
          grid[nowY+1][nowX+1]=12;
          grid[nowY+1][nowX+2]=12;
          nowX=6;nowY=1;
          testDeleteAndNext();
        }
      }
    }
  }
  if(rot==1){
    if(nextShape==10){
      T1(nowX,nowY);
      if(frameCount%20==0){
       // if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
      //  else{  }
        if(nextShape==6 && Zsafe(nowX,nowY+1))nowY++;
        else{
          grid[nowY+1][nowX+1]=13;
          grid[nowY+1][nowX]=13;
          grid[nowY][nowX+1]=13;
          grid[nowY+1][nowX+2]=13;
          nowX=6;nowY=1;
          testDeleteAndNext();
        }
      }
    }
  }
  if(rot==1||rot==3){
    if(nextShape==11){
      S1(nowX,nowY);
      if(frameCount%20==0){
       // if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
      //  else{  }
        if(nextShape==6 && Zsafe(nowX,nowY+1))nowY++;
        else{
          grid[nowY][nowX+1]=14;
          grid[nowY][nowX+2]=14;
          grid[nowY+1][nowX]=14;
          grid[nowY+1][nowX+1]=14;
          nowX=6;nowY=1;
          testDeleteAndNext();
        }
      }
    }
  }
  if(rot==1||rot==3){
    if(nextShape==12){
      Z1(nowX,nowY);
      if(frameCount%20==0){
       // if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
      //  else{  }
        if(nextShape==6 && Zsafe(nowX,nowY+1))nowY++;
        else{
          grid[nowY+1][nowX]=15;
          grid[nowY+2][nowX]=15;
          grid[nowY][nowX+1]=15;
          grid[nowY+1][nowX+1]=15;
          nowX=6;nowY=1;
          testDeleteAndNext();
        }
      }
    }
  }
  if(rot==2){
    if(nextShape==13){
      L2(nowX,nowY);
      if(frameCount%20==0){
       // if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
      //  else{  }
        if(nextShape==6 && Zsafe(nowX,nowY+1))nowY++;
        else{
          grid[nowY][nowX]=16;
          grid[nowY+1][nowX+1]=16;
          grid[nowY][nowX+1]=16;
          grid[nowY+2][nowX+1]=16;
          nowX=6;nowY=1;
          testDeleteAndNext();
        }
      }
    }
  }
  if(rot==2){
    if(nextShape==14){
      J2(nowX,nowY);
      if(frameCount%20==0){
       // if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
      //  else{  }
        if(nextShape==6 && Zsafe(nowX,nowY+1))nowY++;
        else{
          grid[nowY][nowX]=17;
          grid[nowY+2][nowX]=17;
          grid[nowY+1][nowX]=17;
          grid[nowY][nowX+1]=17;
          nowX=6;nowY=1;
          testDeleteAndNext();
        }
      }
    }
  }
  if(rot==2){
    if(nextShape==15){
      T2(nowX,nowY);
      if(frameCount%20==0){
       // if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
      //  else{  }
        if(nextShape==6 && Zsafe(nowX,nowY+1))nowY++;
        else{
          grid[nowY+1][nowX]=18;
          grid[nowY][nowX+1]=18;
          grid[nowY+1][nowX+1]=18;
          grid[nowY+2][nowX+1]=18;
          nowX=6;nowY=1;
          testDeleteAndNext();
        }
      }
    }
  }
  if(rot==3){
    if(nextShape==16){
      L3(nowX,nowY);
      if(frameCount%20==0){
       // if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
      //  else{  }
        if(nextShape==6 && Zsafe(nowX,nowY+1))nowY++;
        else{
          grid[nowY][nowX]=19;
          grid[nowY][nowX+1]=19;
          grid[nowY][nowX+2]=19;
          grid[nowY+1][nowX]=19;
          nowX=6;nowY=1;
          testDelete();
          nextShape=int(random(19));
        }
      }
    }
  }
  if(rot==3){
    if(nextShape==17){
      J3(nowX,nowY);
      if(frameCount%20==0){
       // if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
      //  else{  }
        if(nextShape==6 && Zsafe(nowX,nowY+1))nowY++;
        else{
          grid[nowY][nowX]=20;
          grid[nowY+1][nowX+2]=20;
          grid[nowY][nowX+1]=20;
          grid[nowY][nowX+2]=20;
          nowX=6;nowY=1;
          testDelete();
          nextShape=int(random(19));
        }
      }
    }
  }
  if(rot==3){
    if(nextShape==18){
      T3(nowX,nowY);
      if(frameCount%20==0){
       // if( testSafe(nowShape, nowY+1, nowX, nowAngle) ) nowY++;
      //  else{  }
        if(nextShape==6 && Zsafe(nowX,nowY+1))nowY++;
        else{
          grid[nowY][nowX]=21;
          grid[nowY+1][nowX]=21;
          grid[nowY+2][nowX]=21;
          grid[nowY+1][nowX+1]=21;
          nowX=6;nowY=1;
          testDelete();
          nextShape=int(random(19));
        }
      }
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
  if(keyCode==UP)rot=(rot+1)%4;
  if(keyCode==DOWN){ b=0; nowY++; }
}
