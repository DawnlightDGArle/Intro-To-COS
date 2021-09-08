int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2;

void setup(){
  size(400, 400);
  b1 = color(#00ACE0);
  b2 = color(#DEAEE5);
  
  noLoop();
}

void draw(){
  setGradient(0, 0, width/2, height, b1, b2, X_AXIS);
  setGradient(width/2, 0, width/2, height, b2, b1, X_AXIS);
  
  stroke(200, 200, 200);
  
  fill(#475BDB);
  rect(150, 100, 20, 200);
  
  fill(#BF47DB);
  rect(175, 100, 100, 20);
  
  fill(#41DE6E);
  ellipse(100, 200, 75, 75);
  
  fill(#FFFFFF);
  ellipse(80, 190, 35, 35);
  
  fill(#FFFFFF);
  ellipse(120, 190, 35, 35);
  
  fill(#41DE6E);
  ellipse(80, 190, 20, 20);
  
  fill(#41DE6E);
  ellipse(120, 190, 20, 20);
  
  fill(#BF47DB);
  rect(175, 190, 100, 20);
  
  fill(#BF47DB);
  rect(175, 280, 100, 20);
  
}

void setGradient(int x, int y, float w, float h, color b1, color b2, int axis ) {

  noFill();
  
  if (axis == X_AXIS) {
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(b1, b2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}
