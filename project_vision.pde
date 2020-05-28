import processing.video.*;
Capture video;
PImage capture;
int choice  = 0;
void setup(){
  
  size(1780,995);
  capture  = loadImage("capture.png");
  capture.resize(300, 200);
  video = new Capture(this,1280,720,10);
  video.start();
  
}

void draw(){
  
  leftpanel();
  
    
  if(video.available()){
      video.read();
  }
  
  image(video,0,0);
  stroke(#DB7777);
  strokeWeight(10);
  line(0,0,1280,0);
  line(1280,0,1280,720);
  line(1280,720,0,720);
  
  bottompanel();
  image(capture,500,800);
  
  
}

void mousePressed(){
  if(mouseX>500 && mouseX<800 && mouseY>800 && mouseY<1000){
      int s = second();
      int m = minute();
      int h = hour();
      PImage img  =get(0, 0, 1280, 720);
      img.save("test"+str(h)+"-"+str(m)+"-"+str(s)+".jpg");
  }

}

void leftpanel(){
  fill(204,102,0);
  rect(1280,0,1780,995);
}


void bottompanel(){
  fill(100,130,75);
  rect(0,720,1280,995);
}
