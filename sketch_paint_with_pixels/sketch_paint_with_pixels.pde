PImage frog;

void setup() {
  size(1024, 641);
  frog = loadImage("frog.jpg");
  background(0);
}

void draw() {
  //float x = random(width);
  //float y = random(height);

  ////fill(random(255), 0, 255);
  //color c = frog.get(int(x), int(y));
  //fill(c);
  //noStroke();
  //ellipse(x, y, 16, 16);

  for (int i=0; i <100; i++) {
    float x = random(width);
    float y = random(height);
 
    color c = frog.get(int(x), int(y));
    fill(c);
    noStroke();
    ellipse(x, y, 16, 16);
  }
}
