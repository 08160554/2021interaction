void setup(){
  size(640,480);
  background(255,122,54);
}
void draw(){
  println(frameCount);
}
void mousePressed(){
  loadPixels();
  for(int i=0;i<640*480/2;i++)
  {
    pixels[i]=color(15,126,34);
  }
  updatePixels();
  saveFrame();
}
