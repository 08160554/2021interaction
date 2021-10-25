void setup(){
  size(500,500);
}
float w=30;
float r=0,g=255,b=0;
void draw(){
  stroke(r,g,b); noFill();
  r+=random(3);if(r>255)r=0;
  g+=random(3);if(g>255)g=0;
  b+=random(3);if(b>255)b=0;
  ellipse(mouseX,mouseY,w,w);
  
  w+=0.5;
  if(w>100) w=30;
}
