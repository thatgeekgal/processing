size(600, 400);
background(0);

//loadPixels();
//for (int i=0; i<pixels.length;i++){
// pixels[i] = color(random(255), 0 ,random(50, 255)); 
//}
//updatePixels();

loadPixels();
for (int x=0; x < width; x++) {
 for (int y=0; y < height; y++) {
   float d = dist(x, y, width/2, height/2);
   int loc = x+y*width;
   pixels[loc] = color(d);
   
   //pixels[x+y*width] = color(0, y/2, x/2);  
 }
}
updatePixels();
