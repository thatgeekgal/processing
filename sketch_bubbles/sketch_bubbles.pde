Bubble[] bubbles = new Bubble[200];

int total = 10;

void setup() {
  size(640, 360, P2D);

  for(int i=0; i<bubbles.length; i++){
    bubbles[i] = new Bubble(random(14, 30));
  }
}

void draw() {
  background(255);

  for(int i=0; i<total; i++) {
    bubbles[i].ascend();
    bubbles[i].display();
    bubbles[i].top();
  }
}

void mousePressed() {
  if (total < bubbles.length) {
    total = total + 1; 
  } 
}

void keyPressed() {
  if (total > 0) {
    total = total - 1;
  } 
}
