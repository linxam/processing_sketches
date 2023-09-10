public class MyLine {
  float x, y, x1, y1, deltaY;
  color c;
  
  public MyLine(){
    x = random(0, width);
    y = random(-height, -1);
    x1 = random(x-50, x+50);
    y1 = random(y-50, y+50);
    deltaY = random(1, 5);
    c = color(255, 255, 255, random(0, 255));
  }
  public void show(){
    stroke(this.c);
    line(this.x, this.y, this.x1, this.y1);
  }
  public void move(){
    this.y = this.y + this.deltaY;
    this.y1 = this.y1 + this.deltaY;
    if (this.y > height + 50 && this.y1 > height + 50){
      this.x = random(0, width);
      this.y = random(-height, -1);
      this.x1 = random(x-50, x+50);
      this.y1 = random(y-50, y+50);
      
    }
  }
}

public class MyCircle {
  float x, y, d, deltaY;
  color c;
  
  public MyCircle(){
    d = random(20, 60);
    x = random(0, width);
    y = random(-height, -d);
    deltaY = random(1, 5);
    c = color(255, 255, 255, random(0, 255));
  }
  
  public void show(){
    stroke(this.c);
    fill(30, 180, 255, 0);
    ellipse(this.x, this.y, this.d, this.d);
  }
  
  public void move(){
    this.y += this.deltaY;
    if(this.y > height + this.d + 10){
      this.x = random(0, width);
      this.y = random(-height, -d);
    }
  }
}

public class MyRect {
  float x, y, w, h, deltaY;
  color c;
  
  public MyRect(){
    w = random(20, 60);
    h = random(20, 60);
    x = random(0, width);
    y = random(-height, -h);
    deltaY = random(1, 5);
    c = color(255, 255, 255, random(0, 255));
  }
  
  public void show(){
    stroke(this.c);
    fill(30, 180, 255, 0);
    rect(this.x, this.y, this.w, this.h);
  }
  
  public void move(){
    this.y += this.deltaY;
    if(this.y > height + this.h + 10){
      this.x = random(0, width);
      this.y = random(-height, -h);
    }
  }
}

MyLine[] l = new MyLine[100];
MyCircle[] cir = new MyCircle[100];
MyRect[] rec = new MyRect[100];

void setup(){
  fullScreen();
  ellipseMode(CENTER);
  for(int i=0; i<l.length; i++){
    l[i] = new MyLine();
  }
  
  for(int i=0; i<cir.length; i++){
    cir[i] = new MyCircle();
  }
  
  for(int i=0; i<rec.length; i++){
    rec[i] = new MyRect();
  }
  
  strokeWeight(8);
  strokeCap(ROUND);
  stroke(255);
}

void draw(){
  background(30, 180, 255);
  for(int i=0; i<l.length; i++){
    l[i].move();
    l[i].show();
    cir[i].move();
    cir[i].show();
    rec[i].move();
    rec[i].show();
    
  }
  
}