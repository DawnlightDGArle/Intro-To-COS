PFont Font;

void setup() {
  size(800, 400);
  frameRate(30);
  surface.setTitle("What's This? Coloured Blocks I did in COS140!");
  Font = createFont("Calibri", 18);
  textFont(Font);
  
}

void draw() {
  background(#F0FFFF);
  stroke(#9932CC);
  strokeWeight(2);
  
  fill(#FAFAD2);
  rect(200, 100, 50, 50, 10);
  
  fill(#90EE90);
  rect(300, 100, 50, 50, 10);
  
  fill(#FFB6C1);
  rect(400, 100, 50, 50, 10);
  
  fill(#87CEFA);
  rect(500, 100, 50, 50, 10);

  fill(#DDA0DD);
  ellipse(380, 200, 50, 50);
  
  line(275, 250, 475, 250);
  
  fill(#663399);
  text("@DawnlightDGArle did this", 275, 275);
  
  fill(#00008B);
  text("She made this mess LOL", 290, 300);
  
}
  
