import processing.video.*;
Movie movie;
void setup(){
  size(640,480);
  movie=new Movie(this,"my_ca.mov");///在自己的硬碟裡找檔案
  movie.loop();
}
void draw(){
  if(movie.available()){
    movie.read();
  }
  image(movie,0,0); 
}
