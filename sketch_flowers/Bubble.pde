class Bubble {

  float x;
  float y;
  float diameter;
  PImage img;
  
  Bubble(PImage tempImg, float tempX, float tempY, float tempD) {
    x = tempX;
    y = tempY;
    diameter = tempD;
    img = tempImg;
  }

  void ascend() {
    y--;
    x = x + random(-1, 1);
  }
  
  void display() {
    imageMode(CENTER);
    image(img, x, y, diameter, diameter);
  }
  
  void top() {
    if (y < diameter/2) {
      y = diameter/2;
    }
  }
}
