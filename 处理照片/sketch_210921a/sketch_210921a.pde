PImage img; 

void setup() {
  
  size(1080,1620);
  img = loadImage("dia.jpg");
  background(255);
  // tint(100,100);
  // image(img,0,0);
  
  for(int y=0 ; y<img.height ; y+=10){
    
    for (int x=0 ; x<img.width ; x+=10){
      
      int loc = x + 5 + (y+5) * 1080;
      loadPixels();
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      
      noStroke();
      fill(r,g,b,255);
      //rect(x,y,10,10);
      ellipse(x+5,y+5,15,15);
      
    }
  }
}

/* void draw() {
  
  frameRate(1000);

  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*img.width;

  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();

  fill(r,g,b);
  int m=int(random(15))*2;
  //ellipse(x,y,20,20);
  rect(x-m/2,y-m/2,m,m);
}
*/


void mousePressed() {
  
  save("line.jpg");
  
}
