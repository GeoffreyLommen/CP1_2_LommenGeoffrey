import ddf.minim.*;
import ddf.minim.analysis.*;
Minim minim;
AudioPlayer song;
BeatDetect beat;

void setup() {
  size(960, 540);
  minim = new Minim(this);
  song = minim.loadFile("", 2048);
  song.play();
  beat = new BeatDetect();
}
void draw() {
  background(0);
  
  beat.detect(song.mix);
  if (beat.isOnset()) {
    keyPressed();
  }
}

void keyPressed(){
  if (key == '1'){
    rectMode(CENTER);
    rect(width/2, height/2, 300,300);
  for (int i = 0; i<song.bufferSize() -1; i++);
  stroke(255);
  strokeWeight(10);
  point(random(10,950), random(10,530));

  }
}