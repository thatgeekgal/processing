PImage dog;

void setup() {
  size(720, 480);
  dog = loadImage("dog.jpg");
}

void draw() {
  background(0);
  tint(255, mouseY, mouseX);
  image(dog, 0, 0, mouseX, mouseY);
}
