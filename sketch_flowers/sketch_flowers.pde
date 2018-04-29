PImage[] flowers = new PImage[5];
Bubble[] bubbles = new Bubble[20];

void setup(){
  size(640, 360);
  for(int i = 0; i < flowers.length; i++){
    flowers[i] = loadImage("flower"+i+".png");
  }
  for(int i = 0; i < bubbles.length; i++){
    int index = int(random(0, flowers.length));
    bubbles[i] = new Bubble(flowers[index], random(20, width), random(40, height), random(32, 72));
  }
}

void draw(){
  background(255);
  for(int i = 0; i < bubbles.length; i++){
    bubbles[i].ascend();
    bubbles[i].display();
    bubbles[i].top();
  }
  
}
