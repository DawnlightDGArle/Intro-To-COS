boolean pause = false;

float sunRotation = 0;
float sunRotationVelocity = 1;
float sunRadius = 50;
color sunColour = color(255,227,8);

float mercuryDistance = 200*0.39;
float mercuryRotation = 0;
float mercuryRotationVelocity = 24.0/1408;
float mercuryRevolution = 0;
float mercuryRevolutionVelocity = 365/87.97;
color mercuryColour = color(255);
float mercuryRadius = 20 / (12756.0/4879);

float venusDistance = 200*0.72;
float venusRotation = 0;
float venusRotationVelocity = 24.0/5832;
float venusRevolution = 0;
float venusRevolutionVelocity = 365/224.7;
color venusColour = color(232, 202, 101);
float venusRadius = 20 / (12756.0/12104);

float earthDistance = 200;
float earthRotation = 0;
float earthRotationVelocity = 1;
float earthRevolution = 0;
float earthRevolutionVelocity = 1;
color earthColour = color(106, 240, 214);
float earthRadius = 20;

float moonDistance = 50;
float moonRotation = 0;
float moonRotationVelocity = 708.7/24;
float moonRevolution = 0;
float moonRevolutionVelocity = 365 / 27.322;
color moonColour = color(223, 240, 236);
float moonRadius = 20 / (12756.0/4879);

float marsDistance = 200*1.35;
float marsRotation = 0;
float marsRotationVelocity = 24.0/24.7;
float marsRevolution = 0;
float marsRevolutionVelocity = 365/687.0;
color marsColour = color(211, 122, 122);
float marsRadius = 20 / (12756.0/6792);

float jupiterDistance = 200*2.5;
float jupiterRotation = 0;
float jupiterRotationVelocity = 24.0/9.9;
float jupiterRevolution = 0;
float jupiterRevolutionVelocity = 0.75 / (4331/365);
color jupiterColour = color(242, 202, 142);
float jupiterRadius = 4 * (142984.0/12756);

float saturnDistance = 200*3.5;
float saturnRotation = 0;
float saturnRotationVelocity = 24.0/10.7;
float saturnRevolution = 0;
float saturnRevolutionVelocity = 1 / (10747.0/365);
color saturnColour = color(227, 176, 98);
float saturnRadius = 4 * (120536.0/12756);

float uranusDistance = 200*4.5;
float uranusRotation = 0;
float uranusRotationVelocity = 24.0/17.2;
float uranusRevolution = 0;
float uranusRevolutionVelocity = 1 / (30589.0/365);
color uranusColour = color(98, 227, 211);
float uranusRadius = 4 * (51118/12756);

float neptuneDistance = 200*5.5;
float neptuneRotation = 0;
float neptuneRotationVelocity = 24.0/16.1;
float neptuneRevolution = 0;
float neptuneRevolutionVelocity = 1 / (59800.0/365);
color neptuneColour = color(2, 188, 143);
float neptuneRadius = 4 * (49528/12756);

float plutoDistance = 200*6.5;
float plutoRotation = 0;
float plutoRotationVelocity = 24.0/-153.3;
float plutoRevolution = 0;
float plutoRevolutionVelocity = 365/90560;
color plutoColour = color(255);
float plutoRadius = 20 / (12756.0/2370);

void setup() {
  size(1200, 700, P3D);
  frameRate(60);
}

void draw() {
  background(#2F4F4F);
  lights();
  
  //zoom based on mouse
  rotateX(radians(mouseY));
  translate(0,0, mouseX-height/2);
  
  //DRAW SUN
  pushMatrix();
  //Translate
  translate(width/2,height/2,0);
  
  //Rotate
  rotateY(radians(sunRotation));
  sunRotation += sunRotationVelocity;
  
  //Set Fill
  noStroke();
  fill(sunColour);
  
  //Draw Sphere
  sphere(sunRadius);
  
  //DRAW MERCURY
  pushMatrix();
  rotateY(radians(mercuryRevolution));
  mercuryRevolution += mercuryRevolutionVelocity;
  translate(mercuryDistance, 0, 0);
  rotateY(mercuryRotation);
  mercuryRotation += mercuryRotationVelocity;
  
  noStroke();
  fill(mercuryColour);
  sphere(mercuryRadius);
  popMatrix();
  
  //DRAW VENUS
  pushMatrix();
  rotateY(radians(venusRevolution));
  venusRevolution += venusRevolutionVelocity;
  translate(venusDistance, 0, 0);
  rotateY(venusRotation);
  venusRotation += venusRotationVelocity;
  
  noStroke();
  fill(venusColour);
  sphere(venusRadius);
  popMatrix();
  
  //DRAW EARTH
  pushMatrix();
  rotateY(radians(earthRevolution));
  earthRevolution += earthRevolutionVelocity;
  translate(earthDistance, 0, 0);
  rotateY(earthRotation);
  earthRotation += earthRotationVelocity;
  
  noStroke();
  fill(earthColour);
  sphere(earthRadius);
  
  //DRAW EARTH MOON
  pushMatrix();
  rotateY(radians(moonRevolution));
  moonRevolution += moonRevolutionVelocity;
  translate(moonDistance, 0, 0);
  rotateY(moonRotation);
  moonRotation += moonRotationVelocity;
  
  noStroke();
  fill(moonColour);
  sphere(moonRadius);
  popMatrix();
  popMatrix();
  
  //DRAW MARS
  pushMatrix();
  rotateY(radians(marsRevolution));
  marsRevolution += marsRevolutionVelocity;
  translate(marsDistance, 0, 0);
  rotateY(marsRotation);
  marsRotation += marsRotationVelocity;
  
  noStroke();
  fill(marsColour);
  sphere(marsRadius);
  
  //DRAW MARS MOON
  pushMatrix();
  rotateY(radians(moonRevolution));
  moonRevolution += moonRevolutionVelocity;
  translate(moonDistance, 0, 0);
  rotateY(moonRotation);
  moonRotation += moonRotationVelocity;
  
  noStroke();
  fill(moonColour);
  sphere(moonRadius);
  popMatrix();
  popMatrix();
  
  //DRAW JUPITER
  pushMatrix();
  rotateY(radians(jupiterRevolution));
  jupiterRevolution += jupiterRevolutionVelocity;
  translate(jupiterDistance, 0, 0);
  rotateY(jupiterRotation);
  jupiterRotation += jupiterRotationVelocity;
  
  noStroke();
  fill(jupiterColour);
  sphere(jupiterRadius);
  
  //DRAW JUPITER MOON
  pushMatrix();
  rotateY(radians(moonRevolution));
  moonRevolution += moonRevolutionVelocity;
  translate(moonDistance, 0, 0);
  rotateY(moonRotation);
  moonRotation += moonRotationVelocity;
  
  noStroke();
  fill(moonColour);
  sphere(moonRadius);
  popMatrix();
  popMatrix();
  
  //DRAW SATURN
  pushMatrix();
  rotateY(radians(saturnRevolution));
  saturnRevolution += saturnRevolutionVelocity;
  translate(saturnDistance, 0, 0);
  rotateY(saturnRotation);
  saturnRotation += saturnRotationVelocity;
  
  noStroke();
  fill(saturnColour);
  sphere(saturnRadius);
  rotateX(PI/2);
  fill(255, 255, 255, 128);
  ellipse(0, 0, 100, 100);
  
  //DRAW SATURN MOON
  pushMatrix();
  rotateY(radians(moonRevolution));
  moonRevolution += moonRevolutionVelocity;
  translate(moonDistance, 0, 0);
  rotateY(moonRotation);
  moonRotation += moonRotationVelocity;
  
  noStroke();
  fill(moonColour);
  sphere(moonRadius);
  popMatrix();
  popMatrix();
  
  //DRAW URANUS
  pushMatrix();
  rotateY(radians(uranusRevolution));
  uranusRevolution += uranusRevolutionVelocity;
  translate(uranusDistance, 0, 0);
  rotateY(uranusRotation);
  uranusRotation += uranusRotationVelocity;
  
  noStroke();
  fill(uranusColour);
  sphere(uranusRadius);
  
  //DRAW URANUS MOON
  pushMatrix();
  rotateY(radians(moonRevolution));
  moonRevolution += moonRevolutionVelocity;
  translate(moonDistance, 0, 0);
  rotateY(moonRotation);
  moonRotation += moonRotationVelocity;
  
  noStroke();
  fill(moonColour);
  sphere(moonRadius);
  popMatrix();
  popMatrix();
  
  //DRAW NEPTUNE
  pushMatrix();
  rotateY(radians(neptuneRevolution));
  neptuneRevolution += neptuneRevolutionVelocity;
  translate(neptuneDistance, 0, 0);
  rotateY(neptuneRotation);
  neptuneRotation += neptuneRotationVelocity;
  
  noStroke();
  fill(neptuneColour);
  sphere(neptuneRadius);
  
  //DRAW NEPTUNE MOON
  pushMatrix();
  rotateY(radians(moonRevolution));
  moonRevolution += moonRevolutionVelocity;
  translate(moonDistance, 0, 0);
  rotateY(moonRotation);
  moonRotation += moonRotationVelocity;
  
  noStroke();
  fill(moonColour);
  sphere(moonRadius);
  popMatrix();
  popMatrix();
  
  //DRAW PLUTO
  pushMatrix();
  rotateY(radians(plutoRevolution));
  plutoRevolution += plutoRevolutionVelocity;
  translate(plutoDistance, 0, 0);
  rotateY(plutoRotation);
  plutoRotation += plutoRotationVelocity;
  
  noStroke();
  fill(plutoColour);
  sphere(plutoRadius);
  popMatrix();
  
  
  popMatrix();
 
  /*
  pushMatrix();
  //Translate
  translate(400,400,0);
  
  //Rotate
  rotateZ(radians(-zRotation));
  zRotation += zRotationVelocity;
  
  translate(100, 0, 0);
  rotateY(radians(yRotation));
  yRotation += yRotationVelocity;
  
  //Set Fill
  fill(#FFE308);
  
  //Draw Sphere
  sphere(50);
  popMatrix();*/
}

void mousePressed() {
  pause = !pause;
  if(pause) {
    noLoop();
  }
  else {
    loop();
  }
    
}
