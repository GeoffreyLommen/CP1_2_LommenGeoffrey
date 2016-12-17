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
int triangle1X = 100;
  int triangle2X = width/2;
  int triangle3X = 860;
  int triangle1Y= 75;
  int triangle2Y = 500;
  if (key == '1') {
    ellipseMode(CENTER);
    for (int j = 0; j < 20; j++) {
      fill(random(100, 200), random(100, 200), random(100, 200));
      ellipse(random(60, 910), random(60, 490), 100, 100);
    }
    stroke(0);
    rectMode(CENTER);
    rect(width/2, height/2, 300, 300);
    for (int i = 0; i<song.bufferSize() -1; i++);
    stroke(255);
    strokeWeight(10);
    point(random(10, 950), random(10, 530));
  }if (key == '2') {

    noStroke();

    triangle(triangle1X, triangle1Y, width/2, triangle2Y, triangle3X, triangle1Y);
  }
}