class Bubble {
  
  float x;
  float y;
  float diameter;
  float yspeed;
  color col;
  
  Bubble(float tempD) {
    x = random(10, width);
    y = random(10, height);
    diameter = tempD;
    yspeed = random(0.5, 1.5);
    col = color(random(255),0,random(255), 100);
  }
  
  void ascend() {
    y = y - yspeed;
    x = x + random(-1, 1);
  }
  
  void display() {
    fill(col);
    //noFill();
    stroke(0);
    ellipse(x, y, diameter, diameter);
  }
  
  void top() {
    if (y < 0) {
      y = height;
    }
  }
}
