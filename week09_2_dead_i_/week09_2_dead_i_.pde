float []x={250,150,350,300};
float []y={0,80,50,100};
float []vy={3,2,2.5,4};
boolean []dead={false,false,false,false};
void setup(){
  size(500,600);
}
void draw(){
  background(255);
  for(int i=0;i<4;i++){
    if(dist(mouseX,mouseY,x[i],y[i])<=50){
      dead[i]=true;
    }
    if(dead[i]==true)continue;
    fill(200,51,10); ellipse(x[i],y[i],50,50);
    y[i]=y[i]+vy[i];
    if(y[i]>600)vy[i]=-vy[i];
    if(y[i]<0)vy[i]=-vy[i];
  }
  fill(20,55,200); ellipse(mouseX,mouseY,50,50);
}
