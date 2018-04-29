Particle[] particles = new Particle[2];

void setup() {
 size(600, 400);
 particles[0] = new Particle(100, 150, 80);
 particles[1] = new Particle();
}

void draw() {
 background(0);
 
 particles[1].overlaps(particles[0]);
 
 particles[1].x = mouseX;
 particles[1].y = mouseY;
 
 particles[0].display();
 particles[1].display();
}
