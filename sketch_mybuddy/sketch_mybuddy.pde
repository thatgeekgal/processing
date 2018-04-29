void setup() {
  size(640, 360);
}

void draw() {
  background(255);
  stroke(0);

  // body
  fill(110);
  rectMode(CENTER);
  rect(width/2, height/2, 30, 100);

  // head
  fill(0, 255, 0);
  ellipse(width/2, height/4, 100, 100);
    
  if (mouseX < width/2) { 
    // eyes 
    fill(0);
    ellipse(width/2-30, height/4, 20, 20);
    ellipse(width/2+30, height/4, 20, 20);
  } else { 
    // eyes 
    fill(0);
    ellipse(width/2-30, height/4, 30, 40);
    ellipse(width/2+30, height/4, 30, 40);
    
    // mouse
    ellipse(width/2, height/4+40, 10, 30);
  }
}
