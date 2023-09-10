// Ball class to use in balls_fluid

class Ball {
  float x, y;
  int r, delta;
  color c;
  float ballsize;
  Ball(float x, float y, float ballsize){
    this.x = x + ballsize/2;
    this.y = y + ballsize/2;
    r = int(random(-300, 0));
    this.ballsize = ballsize;
    delta = 1;
    c = color(255, 0, 0);
    // c = color(random(255), random(255), random(255)); // try to uncomment
  }
  void display(){
    fill(this.c);
    if (r>=0){
      ellipse(x, y, r, r);
    }
    
    if (r>this.ballsize){
      delta = -1;
    }
    else if (r<0){
      delta = 1;
    }
    r += delta;
  }
}
