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
  nextShape=int(random(6));
  println(nextShape);
}
void Gameover(){
  textSize(50);
  fill(255);
  text("Game Over", 20, 250); 
  stop();
}
void testDelete(){
  for(int i=18;i>0;i--){
    int bad=0;
    for(int j=1;j<11;j++){
      if(grid[i][j]!=0)bad++;
    }
    if(bad==10){
      for(int ii=i;ii>1;ii--){
        for(int j=1;j<11;j++)grid[ii][j]=grid[ii-1][j];
      }
      i++;
    }
  }
}
int nextShape=0;

boolean L0safe(int x,int y){
  if(grid[y][x]==0 && grid[y+1][x]==0 && grid[y+2][x]==0 && grid[y+2][x+1]==0)return true;
  return false;
}
void L0(int x,int y){
  fill(255,165,79);
  if(L0safe(x,y) ){
    rect(25*x    ,25*y    ,25,25);
    rect(25*x    ,25*(y+1),25,25);
    rect(25*x    ,25*(y+2),25,25);
    rect(25*(x+1),25*(y+2),25,25);
  }
}

boolean L1safe(int x,int y){
  if(grid[y+1][x]==0 && grid[y+1][x+1]==0 && grid[y][x+2]==0 && grid[y+1][x+2]==0)return true;
  return false;
}
void L1(int x,int y){
  fill(255,165,79);
  if(L1safe(x,y) ){
    rect(25*x    ,25*(y+1),25,25);
    rect(25*(x+1),25*(y+1),25,25);
    rect(25*(x+2),25*y    ,25,25);
    rect(25*(x+2),25*(y+1),25,25);
  }
}

boolean L2safe(int x,int y){
  if(grid[y][x]==0 && grid[y+1][x+1]==0 && grid[y][x+1]==0 && grid[y+2][x+1]==0)return true;
  return false;
}
void L2(int x,int y){
  fill(255,165,79);
  if(L2safe(x,y) ){
    rect(25*x    ,25*y    ,25,25);
    rect(25*(x+1),25*(y+1),25,25);
    rect(25*(x+1),25*y    ,25,25);
    rect(25*(x+1),25*(y+2),25,25);
  }
}

boolean L3safe(int x,int y){
  if(grid[y][x]==0 && grid[y][x+1]==0 && grid[y][x+2]==0 && grid[y+1][x]==0)return true;
  return false;
}
void L3(int x,int y){
  fill(255,165,79);
  if(L3safe(x,y) ){
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

boolean I0safe(int x,int y){
  if(grid[y][x]==0 && grid[y][x+1]==0 && grid[y][x+2]==0 && grid[y][x+3]==0)return true;
  return false;
}
void I0(int x,int y){
  fill(176,226,255);
  if(I0safe(x,y) ){
    rect(25*x    ,25*y,25,25);
    rect(25*(x+1),25*y,25,25);
    rect(25*(x+2),25*y,25,25);
    rect(25*(x+3),25*y,25,25);
  }
}

boolean I1safe(int x,int y){
  if(grid[y][x]==0 && grid[y+1][x]==0 && grid[y+2][x]==0 && grid[y+3][x]==0)return true;
  return false;
}
void I1(int x,int y){
  fill(176,226,255);
  if(I1safe(x,y) ){
    rect(25*x    ,25*y,25,25);
    rect(25*x    ,25*(y+1),25,25);
    rect(25*x    ,25*(y+2),25,25);
    rect(25*x    ,25*(y+3),25,25);
  }
}

boolean J0safe(int x,int y){
  if(grid[y][x+1]==0 && grid[y+1][x+1]==0 && grid[y+2][x+1]==0 && grid[y+2][x]==0)return true;
  return false;
}
void J0(int x,int y){
  fill(106,90,205);
  if(J0safe(x,y) ){
    rect(25*x    ,25*(y+2),25,25);
    rect(25*(x+1),25*(y+1),25,25);
    rect(25*(x+1),25*(y+2),25,25);
    rect(25*(x+1),25*y,25,25);
  }
}

boolean J1safe(int x,int y){
  if(grid[y][x]==0 && grid[y+1][x]==0 && grid[y+1][x+1]==0 && grid[y+1][x+2]==0)return true;
  return false;
}
void J1(int x,int y){
  fill(106,90,205);
  if(J1safe(x,y) ){
    rect(25*x    ,25*y    ,25,25);
    rect(25*x    ,25*(y+1),25,25);
    rect(25*(x+1),25*(y+1),25,25);
    rect(25*(x+2),25*(y+1),25,25);
  }
}

boolean J2safe(int x,int y){
  if(grid[y][x]==0 && grid[y+2][x]==0 && grid[y+1][x]==0 && grid[y][x+1]==0)return true;
  return false;
}
void J2(int x,int y){
  fill(106,90,205);
  if(J2safe(x,y) ){
    rect(25*x    ,25*y    ,25,25);
    rect(25*x    ,25*(y+2),25,25);
    rect(25*x    ,25*(y+1),25,25);
    rect(25*(x+1),25*y,25,25);
  }
}

boolean J3safe(int x,int y){
  if(grid[y][x]==0 && grid[y+1][x+2]==0 && grid[y][x+1]==0 && grid[y][x+2]==0)return true;
  return false;
}
void J3(int x,int y){
  fill(106,90,205);
  if(J3safe(x,y) ){
    rect(25*x    ,25*y,25,25);
    rect(25*(x+2),25*(y+1),25,25);
    rect(25*(x+1),25*y,25,25);
    rect(25*(x+2),25*y,25,25);
  }
}

boolean T0safe(int x,int y){
  if(grid[y][x]==0 && grid[y][x+1]==0 && grid[y][x+2]==0 && grid[y+1][x+1]==0)return true;
  return false;
}
void T0(int x,int y){
  fill(205,181,205);
  if(T0safe(x,y) ){
    rect(25*x    ,25*y,25,25);
    rect(25*(x+1),25*y,25,25);
    rect(25*(x+2),25*y,25,25);
    rect(25*(x+1),25*(y+1),25,25);
  }
}

boolean T1safe(int x,int y){
  if(grid[y+1][x]==0 && grid[y+1][x+1]==0 && grid[y][x+2]==0 && grid[y+1][x+2]==0)return true;
  return false;
}
void T1(int x,int y){
  fill(205,181,205);
  if(T1safe(x,y) ){
    rect(25*(x+1),25*(y+1),25,25);
    rect(25*x    ,25*(y+1),25,25);
    rect(25*(x+1),25*y,25,25);
    rect(25*(x+2),25*(y+1),25,25);
  }
}

boolean T2safe(int x,int y){
  if(grid[y+1][x]==0 && grid[y][x+1]==0 && grid[y+1][x+1]==0 && grid[y+2][x+1]==0)return true;
  return false;
}
void T2(int x,int y){
  fill(205,181,205);
  if(T2safe(x,y) ){
    rect(25*x    ,25*(y+1),25,25);
    rect(25*(x+1),25*y,25,25);
    rect(25*(x+1),25*(y+1),25,25);
    rect(25*(x+1),25*(y+2),25,25);
  }
}

boolean T3safe(int x,int y){
  if(grid[y][x]==0 && grid[y+1][x]==0 && grid[y+2][x]==0 && grid[y+1][x+1]==0)return true;
  return false;
}
void T3(int x,int y){
  fill(205,181,205);
  if(T3safe(x,y) ){
    rect(25*x    ,25*y,25,25);
    rect(25*x    ,25*(y+1),25,25);
    rect(25*x    ,25*(y+2),25,25);
    rect(25*(x+1),25*(y+1),25,25);
  }
}

boolean S0safe(int x,int y){
  if(grid[y][x]==0 && grid[y+1][x]==0 && grid[y+1][x+1]==0 && grid[y+2][x+1]==0)return true;
  return false;
}
void S0(int x,int y){
  fill(193,255,193);
  if(S0safe(x,y) ){
    rect(25*x    ,25*y,25,25);
    rect(25*x    ,25*(y+1),25,25);
    rect(25*(x+1),25*(y+1),25,25);
    rect(25*(x+1),25*(y+2),25,25);
  }
}

boolean S1safe(int x,int y){
  if(grid[y][x+1]==0 && grid[y][x+2]==0 && grid[y+1][x]==0 && grid[y+1][x+1]==0)return true;
  return false;
}
void S1(int x,int y){
  fill(193,255,193);
  if(S1safe(x,y) ){
    rect(25*(x+1),25*y,25,25);
    rect(25*(x+2),25*y,25,25);
    rect(25*x    ,25*(y+1),25,25);
    rect(25*(x+1),25*(y+1),25,25);
  }
}

boolean Z0safe(int x,int y){
  if(grid[y][x]==0 && grid[y+1][x+2]==0 && grid[y][x+1]==0 && grid[y+1][x+1]==0)return true;
  return false;
}
void Z0(int x,int y){
  fill(250,128,124);
  if(Z0safe(x,y) ){
    rect(25*x    ,25*y    ,25,25);
    rect(25*(x+2),25*(y+1),25,25);
    rect(25*(x+1),25*y    ,25,25);
    rect(25*(x+1),25*(y+1),25,25);
  }
}

boolean Z1safe(int x,int y){
  if(grid[y+1][x]==0 && grid[y+2][x]==0 && grid[y][x+1]==0 && grid[y+1][x+1]==0)return true;
  return false;
}
void Z1(int x,int y){
  fill(250,128,124);
  if(Z1safe(x,y) ){
    rect(25*x    ,25*(y+1),25,25);
    rect(25*x    ,25*(y+2),25,25);
    rect(25*(x+1),25*y    ,25,25);
    rect(25*(x+1),25*(y+1),25,25);
  }
}

void setup(){
  size(300,500);
  nextShape=int(random(6));
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

  for(int x=0;x<12;x++){
    for(int y=0;y<20;y++){
      if(y==0) fill(70,130,180);
      else if(grid[y][x]==1)fill(70,130,180);//wall
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
  if(rot==0&&nextShape==0){
    L0(nowX,nowY);
    if(frameCount%20==0){
      if(nextShape==0 && L0safe(nowX,nowY+1))nowY++;
      else{        
        grid[nowY][nowX]=3;
        grid[nowY+1][nowX]=3;
        grid[nowY+2][nowX]=3;
        grid[nowY+2][nowX+1]=3;
        nowX=6;nowY=0;
        testDeleteAndNext();
        if(L0safe(nowX,nowY)==false ){
          Gameover();   
        }
      }
    }
  }
  else if(rot==0&&nextShape==1||rot==1&&nextShape==1||rot==2&&nextShape==1||rot==3&&nextShape==1){
    O0(nowX,nowY);
    if(frameCount%20==0){
      if(nextShape==1 && Osafe(nowX,nowY+1))nowY++;
      else{      
        grid[nowY][nowX]=4;
        grid[nowY+1][nowX]=4;
        grid[nowY][nowX+1]=4;
        grid[nowY+1][nowX+1]=4;
        nowX=6;nowY=0;
        testDeleteAndNext();
        if(Osafe(nowX,nowY)==false ){
          Gameover();   
        }
      }
    }
  }
  else if(rot==0&&nextShape==2||rot==2&&nextShape==2){
    I0(nowX,nowY);
    if(frameCount%20==0){
      if(nextShape==2 && I0safe(nowX,nowY+1))nowY++;
      else{      
        grid[nowY][nowX]=5;
        grid[nowY][nowX+1]=5;
        grid[nowY][nowX+2]=5;
        grid[nowY][nowX+3]=5;
        nowX=6;nowY=0;
        testDeleteAndNext();
        if(I0safe(nowX,nowY)==false ){
          Gameover();   
        }
      }
    }
  }
  else if(rot==0&&nextShape==3){
    J0(nowX,nowY);
    if(frameCount%20==0){
      if(nextShape==3 && J0safe(nowX,nowY+1))nowY++;
      else{      
        grid[nowY+2][nowX]=6;
        grid[nowY+1][nowX+1]=6;
        grid[nowY+2][nowX+1]=6;
        grid[nowY][nowX+1]=6;
        nowX=6;nowY=0;
        testDeleteAndNext();
        if(J0safe(nowX,nowY)==false ){
          Gameover();   
        }
      }
    }
  }
  else if(rot==0&&nextShape==4){
    T0(nowX,nowY);
    if(frameCount%20==0){
      if(nextShape==4 && T0safe(nowX,nowY+1))nowY++;
      else{      
        grid[nowY][nowX]=7;
        grid[nowY][nowX+1]=7;
        grid[nowY][nowX+2]=7;
        grid[nowY+1][nowX+1]=7;
        nowX=6;nowY=0;
        testDeleteAndNext();
        if(T0safe(nowX,nowY)==false ){
          Gameover();   
        }
      }
    }
  }
  else if(rot==0&&nextShape==5||rot==2&&nextShape==5){
    S0(nowX,nowY);
    if(frameCount%20==0){
      if(nextShape==5 && S0safe(nowX,nowY+1))nowY++;
      else{      
        grid[nowY][nowX]=8;
        grid[nowY+1][nowX]=8;
        grid[nowY+1][nowX+1]=8;
        grid[nowY+2][nowX+1]=8;
        nowX=6;nowY=0;
        testDeleteAndNext();
        if(S0safe(nowX,nowY)==false ){
          Gameover();   
        }
      }
    }
  }
  else if(rot==0&&nextShape==6||rot==2&&nextShape==6){
    Z0(nowX,nowY);
    if(frameCount%20==0){
      if(nextShape==6 && Z0safe(nowX,nowY+1))nowY++;
      else{
        grid[nowY][nowX]=9;
        grid[nowY+1][nowX+2]=9;
        grid[nowY][nowX+1]=9;
        grid[nowY+1][nowX+1]=9;
        nowX=6;nowY=0;
        testDeleteAndNext();
        if(Z0safe(nowX,nowY)==false ){
          Gameover();   
        }
      }
    }
  }
  else if(rot==1&&nextShape==0){
    L1(nowX,nowY);
    if(frameCount%20==0){
      if(nextShape==0 && L1safe(nowX,nowY+1))nowY++;
      else{
        grid[nowY+1][nowX]=10;
        grid[nowY+1][nowX+1]=10;
        grid[nowY][nowX+2]=10;
        grid[nowY+1][nowX+2]=10;
        nowX=6;nowY=0;
        testDeleteAndNext();
        if(L1safe(nowX,nowY)==false ){
          Gameover();   
        }
      }
    }
  }
  else if(rot==1&&nextShape==2||rot==3&&nextShape==2){
    I1(nowX,nowY);
    if(frameCount%20==0){
      if(nextShape==2 && I1safe(nowX,nowY+1))nowY++;
      else{
        grid[nowY+3][nowX]=11;
        grid[nowY+2][nowX]=11;
        grid[nowY+1][nowX]=11;
        grid[nowY][nowX]=11;
        nowX=6;nowY=0;
        testDeleteAndNext();
        if(I1safe(nowX,nowY)==false ){
          Gameover();   
        }
      }
    }
  }
  else if(rot==1&&nextShape==3){
    J1(nowX,nowY);
    if(frameCount%20==0){
      if(nextShape==3 && J1safe(nowX,nowY+1))nowY++;
      else{
        grid[nowY][nowX]=12;
        grid[nowY+1][nowX]=12;
        grid[nowY+1][nowX+1]=12;
        grid[nowY+1][nowX+2]=12;
        nowX=6;nowY=0;
        testDeleteAndNext();
        if(J1safe(nowX,nowY)==false ){
          Gameover();   
        }
      }
    }
  }
  if(rot==1&&nextShape==4){
    T1(nowX,nowY);
    if(frameCount%20==0){
      if(nextShape==4 && T1safe(nowX,nowY+1))nowY++;
      else{
        grid[nowY+1][nowX+1]=13;
        grid[nowY+1][nowX]=13;
        grid[nowY][nowX+1]=13;
        grid[nowY+1][nowX+2]=13;
        nowX=6;nowY=0;
        testDeleteAndNext();
        if(T1safe(nowX,nowY)==false ){
          Gameover();   
        }
      }
    }
  }
  else if(rot==1&&nextShape==5||rot==3&&nextShape==5){
    S1(nowX,nowY);
    if(frameCount%20==0){
      if(nextShape==5 && S1safe(nowX,nowY+1))nowY++;
      else{
        grid[nowY][nowX+1]=14;
        grid[nowY][nowX+2]=14;
        grid[nowY+1][nowX]=14;
        grid[nowY+1][nowX+1]=14;
        nowX=6;nowY=0;
        testDeleteAndNext();
        if(S1safe(nowX,nowY)==false ){
          Gameover();   
        }
      }
    }
  }
  if(rot==1&&nextShape==6||rot==3&&nextShape==6){
    Z1(nowX,nowY);
    if(frameCount%20==0){
      if(nextShape==6 && Z1safe(nowX,nowY+1))nowY++;
      else{
        grid[nowY+1][nowX]=15;
        grid[nowY+2][nowX]=15;
        grid[nowY][nowX+1]=15;
        grid[nowY+1][nowX+1]=15;
        nowX=6;nowY=0;
        testDeleteAndNext();
        if(Z1safe(nowX,nowY)==false ){
          Gameover();   
        }
      }
    }
  }
  else if(rot==2&&nextShape==0){
    L2(nowX,nowY);
    if(frameCount%20==0){
      if(nextShape==0 && L2safe(nowX,nowY+1))nowY++;
      else{
        grid[nowY][nowX]=16;
        grid[nowY+1][nowX+1]=16;
        grid[nowY][nowX+1]=16;
        grid[nowY+2][nowX+1]=16;
        nowX=6;nowY=0;
        testDeleteAndNext();
        if(L2safe(nowX,nowY)==false ){
          Gameover();   
        }
      }
    }
  }
  else if(rot==2&&nextShape==3){
    J2(nowX,nowY);
    if(frameCount%20==0){
      if(nextShape==3 && J2safe(nowX,nowY+1))nowY++;
      else{
        grid[nowY][nowX]=17;
        grid[nowY+2][nowX]=17;
        grid[nowY+1][nowX]=17;
        grid[nowY][nowX+1]=17;
        nowX=6;nowY=0;
        testDeleteAndNext();
        if(J2safe(nowX,nowY)==false ){
          Gameover();   
        }
      }
    }
  }
  else if(rot==2&&nextShape==4){
    T2(nowX,nowY);
    if(frameCount%20==0){
      if(nextShape==4 && T2safe(nowX,nowY+1))nowY++;
      else{
        grid[nowY+1][nowX]=18;
        grid[nowY][nowX+1]=18;
        grid[nowY+1][nowX+1]=18;
        grid[nowY+2][nowX+1]=18;
        nowX=6;nowY=0;
        testDeleteAndNext();
        if(T2safe(nowX,nowY)==false ){
          Gameover();   
        }
      }
    }
  }
  else if(rot==3&&nextShape==0){
    L3(nowX,nowY);
    if(frameCount%20==0){
      if(nextShape==0 && L3safe(nowX,nowY+1))nowY++;
      else{
        grid[nowY][nowX]=19;
        grid[nowY][nowX+1]=19;
        grid[nowY][nowX+2]=19;
        grid[nowY+1][nowX]=19;
        nowX=6;nowY=0;
        testDeleteAndNext();
        if(L3safe(nowX,nowY)==false ){
          Gameover();   
        }
      }
    }
  }
  else if(rot==3&&nextShape==3){
    J3(nowX,nowY);
    if(frameCount%20==0){
      if(nextShape==3 && J3safe(nowX,nowY+1))nowY++;
      else{
        grid[nowY][nowX]=20;
        grid[nowY+1][nowX+2]=20;
        grid[nowY][nowX+1]=20;
        grid[nowY][nowX+2]=20;
        nowX=6;nowY=0;
        testDeleteAndNext();
        if(J3safe(nowX,nowY)==false ){
          Gameover();   
        }
      }
    }
  }
  else if(rot==3&&nextShape==4){
    T3(nowX,nowY);
    if(frameCount%20==0){
      if(nextShape==4 && T3safe(nowX,nowY+1))nowY++;
      else{
        grid[nowY][nowX]=21;
        grid[nowY+1][nowX]=21;
        grid[nowY+2][nowX]=21;
        grid[nowY+1][nowX+1]=21;
        nowX=6;nowY=0;
        testDeleteAndNext();
        if(T3safe(nowX,nowY)==false ){
          Gameover();   
        }
      }
    }
  }
}
int nowX=6,nowY=1;
void keyPressed(){
  if(keyCode==RIGHT && grid[nowY][nowX+1]==0 ){ b=3; nowX++; }
  if(keyCode==LEFT && grid[nowY][nowX-1]==0 ) { b=2; nowX--; }
  if(keyCode==UP)rot=(rot+1)%4;
  if(keyCode==DOWN){ b=0; nowY++; }
}
