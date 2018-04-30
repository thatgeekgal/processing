PImage frog;

void setup() {
  size(1024, 641);
  frog = loadImage("frog.jpg");
}

void draw() {
  //image(frog, 0, 0);
  
  // write the image function
  loadPixels();
  frog.loadPixels();
  for (int x=0; x < width-1; x++) {
    for (int y=0; y < height; y++) {
      //float d = dist(x, y, width/2, height/2);
      //int loc = x + y*width;
      //pixels[loc] = color(d);
      
      // many image manipulation options below
      
      // 1. display as it is
      // pixels[loc] = frog.pixels[loc]; 
      
      // 2. distore the color
      // pixels[loc] = frog.pixels[loc]/2; 
      
      // 3. display as it is by getting rgb info
      //float r = red(frog.pixels[loc]);
      //float g = green(frog.pixels[loc]);
      //float b = blue(frog.pixels[loc]);
      //pixels[loc] = color(r, g, b);
      
      // 4. swap red and green
      //pixels[loc] = color(g, r, b);
      
      // 5. swap red and green and make it much bluer
      // pixels[loc] = color(g, r, b*2);
      
      // 6. pixels are spacing value
      //if (x>200) {
      //  pixels[loc] = color(g, r, b*2);
      //} else {
      //  pixels[loc] = color(r, g, b);
      //}
      
      // 7. brightness of pixel based on the distance of center point
      //float d = dist(width/2, height/2, x, y);
      //pixels[loc] = color(r+d, g+d, b+d);
      
      // 8. brightness of pixel based on mouseX
      //pixels[loc] = color(r+mouseX, g+mouseX, b+mouseX);
      
      // 9. map the distance and affect the brightness
      //float d = dist(width/2, height/2, x, y);
      //float factor = map(d, 0, 200, 0, 2);
      
      // 10. flash light effect
      //float d = dist(mouseX, mouseY, x, y);
      //float factor = map(d, 0, 200, 2, 0);
      //pixels[loc] = color(r*factor, g*factor, b*factor);
      
      // 11. black and white based on brightness
      //float bw = brightness(frog.pixels[loc]);
      //if (bw > mouseX) {
      //  pixels[loc] = color(255);
      //} else {
      //  pixels[loc] = color(0);
      //}
      
      // 12. blur or sharp based on the neibouring
      int loc1 = x      +y*width;
      int loc2 = (x+1) + y*width;
      float b1 = brightness(frog.pixels[loc1]);
      float b2 = brightness(frog.pixels[loc2]);
      float diff = abs(b1-b2);
      if (diff > 20) {
        pixels[loc1] = color(0);
      } else {
       pixels[loc1] = color(255);
      }
    }
  }
   updatePixels();
}
