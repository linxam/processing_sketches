// In this sketch we generate "table" of balls with random diameter and change their size.
// So we have an effect like some fluid substance or plasma
// Try to change variable values. Enjoy.
// (c) Alexander Kilinkarov

int ballCount = 100; // try to change the number. 10 - 120 works fine
Ball[][] balls = new Ball[ballCount][ballCount];

void setup() {
  // size(displayWidth, displayHeight); // this line is for APDE. If you use APDE on android, uncomment this line and comment next line ;)
  fullScreen();
  frameRate(30);
  ellipseMode(CENTER);
  int ballsize = (width)/ballCount; // works fine on landscape orientation (computer). If you use portrait orientation (on the phone), so write height, not width here.
  background(20);
  noStroke();
  for (int i=0; i<ballCount; i++) {
    for (int j=0; j<ballCount; j++) {
      balls[i][j] = new Ball(i*ballsize,
        j*ballsize, ballsize);
    }
  }
}

void draw() {
  background(30);
  for (int i=0; i<ballCount; i++) {
    for (int j=0; j<ballCount; j++) {
      balls[i][j].display();
    }
  }
}

void keyPressed(){
  if (key == ESC || key == 'q' || key == 'Q'){
    exit();
  }
}
