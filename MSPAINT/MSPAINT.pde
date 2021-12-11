/*Paint Program

we want to make a simple paint program (like MSPaint) with the following features:
1. Blank canvas to draw on
2. at least four tools including (these "buttons" should have icons):
 A pencil
 B paintbrush
 C spraypaint
 D other
3. color selection with at least 4 colour options
4. ability to load an image file from the file system and paint it to the canvas
5. ability to save the canvas to a file
6. reset the canvas

*/

final int PENCIL = 0;
final int PAINTBRUSH = 1;
final int SPRAYPAINT = 2;
final int OTHER = 3;

int mode = PENCIL;
color fillColour = color(0);
color strokeColour = color(0);

int canvasX, canvasY;
int pencilX, pencilY;
int paintbrushX, paintbrushY;
int spraypaintX, spraypaintY;
int eraserX, eraserY;

int buttonMargin, colourMargin;
int toolButtonWidth, toolButtonHeight;
int colourButtonWidth, colourButtonHeight;

int redX, redY;
int yellowX, yellowY;
int greenX, greenY;
int blueX, blueY;
int blackX, blackY;

int loadFileX, loadFileY;
int saveFileX, saveFileY;
int fileButtonWidth, fileButtonHeight;

PImage img;
boolean imageSelected = false;

int numImages = 1;

PImage pencil;
PImage paintbrush;
PImage spraypaint;
PImage eraser;

void setup() {
  size(800, 700);
  buttonMargin = 100;
  colourMargin = 50;
  toolButtonWidth = 50;
  toolButtonHeight = 50;
  colourButtonWidth = 50;
  colourButtonHeight = 25;
  fileButtonWidth = buttonMargin;
  fileButtonHeight = 50;
  pencilX = 0;
  pencilY = 0;
  paintbrushX = 55;
  paintbrushY = 0;
  spraypaintX = 0;
  spraypaintY = 55;
  eraserX = 55;
  eraserY = 55;
  
  redX = buttonMargin;
  redY = height - colourMargin;
  
  yellowX = buttonMargin + 50;
  yellowY = height - colourMargin;
  
  greenX = buttonMargin + 100;
  greenY = height - colourMargin;
  
  blueX = buttonMargin + 150;
  blueY = height - colourMargin;
  
  blackX = buttonMargin + 200;
  blackY = height - colourMargin;
  
  canvasX = buttonMargin;
  canvasY = 0;
  
  loadFileX = 0;
  loadFileY = height/2;
  
  saveFileX = 0;
  saveFileY = height/2 + toolButtonHeight;
  
  background(255);
}

void draw() {
  drawToolButtons();
  drawColourButtons();
  //drawCanvas() 
  drawFileButtons();
  
  if(imageSelected) {
    image(img, buttonMargin, 0);
    imageSelected = false;
  }
  textSize(16);
  fill(0);
  text("Press r to reset canvas", 700, 660);
}

void drawToolButtons() {
  noStroke();
  fill(100);
  rect(0, 0, buttonMargin, height-colourMargin);
  
  fill(200);
  rect(pencilX, pencilY, toolButtonWidth, toolButtonHeight);
  
  rect(paintbrushX, paintbrushY, toolButtonWidth, toolButtonHeight);
  
  rect(spraypaintX, spraypaintY, toolButtonWidth, toolButtonHeight);
  
  rect(eraserX, eraserY, toolButtonWidth, toolButtonHeight);
  
  fill(0);
  textSize(24);
  textAlign(CENTER, CENTER);
  text("Pe", pencilX+toolButtonWidth/2, pencilY+toolButtonHeight/2);
  text("Pb", paintbrushX+toolButtonWidth/2, paintbrushY+toolButtonHeight/2);
  text("Sp", spraypaintX+toolButtonWidth/2, spraypaintY+toolButtonHeight/2);
  text("Er", eraserX+toolButtonWidth/2, eraserY+toolButtonHeight/2);
}

void drawColourButtons() {
  fill(100);
  noStroke();
  rect(0, height-colourMargin, width, colourMargin);
  
  //draw red button
  fill (255, 0, 0);
  rect(redX, redY, colourButtonWidth, colourButtonHeight);
  
  fill(255,247,0);
  rect(yellowX, yellowY, colourButtonWidth, colourButtonHeight);
  
  fill(39,198,4);
  rect(greenX, greenY, colourButtonWidth, colourButtonHeight);
  
  fill(61,67,196);
  rect(blueX, blueY, colourButtonWidth, colourButtonHeight);
  
  fill(0,0,0);
  rect(blackX, blackY, colourButtonWidth, colourButtonHeight);
}

void drawFileButtons() {
  fill(200);
  stroke(0);
  rect(loadFileX, loadFileY, fileButtonWidth, fileButtonHeight);
  textAlign(CENTER, CENTER);
  fill(0);
  text("Load File", loadFileX + fileButtonWidth/2, loadFileY + fileButtonHeight/2);
  
  fill(200);
  stroke(0);
  rect(saveFileX, saveFileY, fileButtonWidth, fileButtonHeight);
  textAlign(CENTER, CENTER);
  fill(0);
  text("Save File", saveFileX + fileButtonWidth/2, saveFileY + fileButtonHeight/2);
}

void mousePressed(){
  //check for tool button clicks
  if (mouseX > pencilX && mouseX < pencilX+toolButtonWidth && mouseY > pencilY && mouseY < pencilY+toolButtonHeight) {
    mode = PENCIL;
    println("you selected pencil");
  }
  else if (mouseX > paintbrushX && mouseX < paintbrushX+toolButtonWidth && mouseY > paintbrushY && mouseY < paintbrushY+toolButtonHeight) {
    mode = PAINTBRUSH;
    println("you selected paintbrush");
  }
  else if (mouseX > spraypaintX && mouseX < spraypaintX+toolButtonWidth && mouseY > spraypaintY && mouseY < spraypaintY+toolButtonHeight) {
    mode = SPRAYPAINT;
    println("you selected spraypaint");
  }
  else if (mouseX > eraserX && mouseX < eraserX+toolButtonWidth && mouseY > eraserY && mouseY < eraserY+toolButtonHeight) {
    mode = OTHER;
    println("you selected eraser");
  }
  
  //check for colour button clicks
  else if (mouseX > redX && mouseX < redX+colourButtonWidth && mouseY > redY && mouseY < redY+colourButtonHeight) {
    fillColour = color(255,0,0);
    strokeColour = color(255,0,0);
    println("you selected the colour red");
  }
  else if (mouseX > yellowX && mouseX < yellowX+colourButtonWidth && mouseY > yellowY && mouseY < yellowY+colourButtonHeight) {
    fillColour = color(255,247,0);
    strokeColour = color(255,247,0);
    println("you selected the colour yellow");
  }
  else if (mouseX > greenX && mouseX < greenX+colourButtonWidth && mouseY > greenY && mouseY < greenY+colourButtonHeight) {
    fillColour = color(39,198,4);
    strokeColour = color(39,198,4);
    println("you selected the colour green");
  }
  else if (mouseX > blueX && mouseX < blueX+colourButtonWidth && mouseY > blueY && mouseY < blueY+colourButtonHeight) {
    fillColour = color(61,67,196);
    strokeColour = color(61,67,196);
    println("you selected the colour blue");
  }
  else if (mouseX > blackX && mouseX < blackX+colourButtonWidth && mouseY > blackY && mouseY < blackY+colourButtonHeight) {
    fillColour = color(0,0,0);
    strokeColour = color(0,0, 0);
    println("you selected the colour black");
  }
  
 
  //load file
  else if (mouseX > loadFileX && mouseX < loadFileX+fileButtonWidth && mouseY > loadFileY && mouseY < loadFileY+fileButtonHeight) {
    selectInput("Select an image file to load", "fileSelected");
    
  }
  
  //save file
  else if (mouseX > saveFileX && mouseX < saveFileX+fileButtonWidth && mouseY > saveFileY && mouseY < saveFileY+fileButtonHeight) {
    //they have clicked the save file button
    //export the appropriate collection of pixels to some destination
    PImage temp = get(buttonMargin, 0, width-buttonMargin, height-colourMargin);
    long rdmNum = System.currentTimeMillis();
    temp.save("myImage" + rdmNum +".png");
    
  }
}

void keyPressed(){
  if (key == 'r') {
    background(255);
  }
}

void fileSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    println("User selected " + selection.getAbsolutePath());
    img = loadImage(selection.getAbsolutePath());
    img.resize(width-buttonMargin, height-colourMargin);
    //image(img,buttonMargin,0);
    imageSelected = true;
  }
}

void mouseDragged() {
  if (mouseX > buttonMargin && mouseY < height - colourMargin) {
    if(mode == PENCIL) {
      strokeWeight(1);
      stroke(strokeColour);
      line(pmouseX, pmouseY, mouseX, mouseY);
    }
    else if (mode == PAINTBRUSH) {
      strokeWeight(10);
      stroke(strokeColour);
      line(pmouseX, pmouseY, mouseX, mouseY);
    }
    else if (mode == SPRAYPAINT) {
      //draw cool spraypaint effect
      stroke(strokeColour);
      fill(fillColour);
      
      int radius = 10;
      int x,y;
      for(int i=0; i < 10; i++) {
        x = (int)random(radius+1) - 5;
        y = (int)random(radius+1) - 5;
        point(mouseX + x, mouseY + y);
      }
    }
    else if (mode == OTHER) {
      strokeWeight(10);
      stroke(255);
      line(pmouseX, pmouseY, mouseX, mouseY);
    }
  }
}
