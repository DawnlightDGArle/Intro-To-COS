processing.core.PImage img;

float n = random(2);

void setup() {
  size(600,600);
  
  img = loadImage("wife.jpg");
  img.resize(width,height);
  background(255);
}

void draw() {
  //background(255);
  for(int i=0;i<20;i++){
    int x = (int) random(img.width);
    int y = (int) random(img.height);
  
  //color c = img.get(x,y);
    color c2 = img.pixels[y*img.width+x];
    c2 = color(red(c2), green(c2), blue(c2), (int) random(256));
  
    fill(c2);
    stroke(c2);
    
    if (n <1) {
      ellipse(x, y, 7, 7);
    }
    else {
      rectMode(CENTER);
      rect(x, y, 7, 7);
    }
  }
}

void mouseMoved() {
  if (mouseY <= 300) {
        for(int i=0;i<40;i++){
        int x = (int) random(img.width);
        int y = (int) random(img.height);
        
        color c2 = img.pixels[y*img.width+x];
        c2 = color(red(c2), green(c2), blue(c2), (int) random(256));
  
        fill(c2);
        stroke(c2);
        rectMode(CENTER);
        rect(x, y, 7, 7);
        ellipse(x, y, 10, 10);
      }
  }
}
