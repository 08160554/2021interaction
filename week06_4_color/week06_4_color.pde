import processing.video.*;
Movie movie;
color []c={#F0F0F0,#FFC501,#CE982C,#CE802C,#B94027};
void setup(){
  size(640,480);
  background(#F0F0F0);
  movie=new Movie(this,"my_ca.mov");
  movie.play();
}
void draw(){
  if(movie.available()){
    movie.read();
    image(movie,0,0); 
  }
}
void mousePressed(){
  movie.pause();
  loadPixels();
  for(int i=0;i<640*480;i++){
    float bright = brightness (pixels[i]);
    int now=4-int(bright/67);
    pixels[i]=c[now];
  }
  updatePixels();
}
