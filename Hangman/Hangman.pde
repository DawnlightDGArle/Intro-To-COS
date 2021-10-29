/* Declare any variables we need 
   across all methods. Consider variables for storing all
   the words you'll read in, the current word being guessed,
   variables for keeping track of the current number of correct letters
   as well as incorrect guesses, information about the length of
   a dash (so you know how to draw dashes and where to draw letters),
   and any others you might want.
*/
String [] words;
String word;
String lettersGuessed="";
int margin;
int lengthOfDash;
int numWrongGuesses, numCorrectGuesses;

/* setup() method that is called once 
   at the beginning of the program */
   
void setup() {
  //set the size of your window
  size(600,600);
  //lower the framerate -- it's hangman, do we need it running 
  //at 60 FPS?


  //load all the words from a file
  words = loadStrings("words.txt");
  
  //choose word
  word = words[floor(random(words.length))];
  
  println(word);

  //consider changing the font size for when you start 
  //to fill in the letters  

}

/* draw() method that paints to the screen 
   every frame */
void draw() {
  //draw background()
  background(#87CEFA);
  //draw gallows
    drawGallows();
    //draw body parts
    drawBodyPart();

    //draw guessed letters
    textSize(24);
    text("Letters: " + lettersGuessed, 200, 100);
    
    //draw dashes
    drawDashes();
    
    
    //is game over? 
    if (numCorrectGuesses == word.length()) {
      textSize(36);
      text("You Win!", 150, 150);
    }
    //is the number of correct guesses == to number of characters in word?
    
    //or is the number of incorrect guesses == to max number of body parts?
    else if (numWrongGuesses == 6) {
      textSize(36);
      text("You Lose!", 150, 150);
    }
  

}

/*
 keyPressed() method that handles keyboard 
 input from user.
*/
void keyPressed() {
  lettersGuessed = lettersGuessed + key;
  //if it's a letter that hasn't been guessed before
   if(lettersGuessed.indexOf(key) == -1) {
     lettersGuessed += key;
   }
    //add letter to lettersGuessed
    
    //if it's a correct letter of the word
    if(word.indexOf(key) > -1) {
      //increment the number of correct letters
    for (int i=0; i < word.length(); i++) {
      if(word.charAt(i) == key){
      numCorrectGuesses++;
      }
    }
    }
    //else it's an incorrect letter
    else {
      numWrongGuesses++; 
    }
      //increment number of wrong guesses
  if (numCorrectGuesses <= word.length()) {
    if (key == 'r') {
      numCorrectGuesses = 0;
      numWrongGuesses = 0;
      lettersGuessed = "";
      
      word = words[floor(random(words.length))];
      println(word);
      drawDashes();
      drawGallows();
    }
  }
  else if (numWrongGuesses == 6) {
    if (key == 'r') {
      numCorrectGuesses = 0;
      numWrongGuesses = 0;
      lettersGuessed = "";
      
      word = words[floor(random(words.length))];
      println(word);
      drawDashes();
      drawGallows();
  }
  }
}




void drawGallows() {
  //draw your gallows using line(), rect(), or whatever you want it to look like
  fill(#F0FFFF);
  rect(100, 400, 150, 100);
  line(155, 400, 155, 200);
  line(155, 200, 340, 200);
  line(340, 200, 340, 250);
}


void drawDashes() {
  //how do you draw the right number of dashes?
  //has to be based on length of words
  
  //set the length of the dash
  margin = 50;
  lengthOfDash = (width-2*margin) / word.length() /2;
  //if screen is "width" wide, you can use this in your calculation  
  //use a loop to draw repeated dashes
  strokeWeight(3);
  for (int i=0;i<word.length();i++) {
    line(2*margin+lengthOfDash*i*2, 550, 2*margin+lengthOfDash*i*2 + lengthOfDash, 550);
  
    if(lettersGuessed.indexOf(word.charAt(i)) != -1) {
      textAlign(CENTER);
      text(word.charAt(i), 2*margin+lengthOfDash*i*2 + lengthOfDash/2, 530);
    }
  }
  
}

void drawBodyPart() {
  if(numWrongGuesses>=1) {
    //draw head
    ellipse(340, 250, 50, 50);

  } 
  if(numWrongGuesses>=2) {
    //draw body
    line(340, 275, 340, 360);

  } 
  if(numWrongGuesses>=3) {
    //draw arm 1
    line(300, 275, 340, 300);

  } 
  if(numWrongGuesses>=4) {
    //draw arm 2
    line(340, 300, 380, 275);

  } 
  if(numWrongGuesses>=5) {
    //draw leg 1
    line(300, 400, 340, 360);

  } 
  if(numWrongGuesses>=6) {
    //draw leg 2
    line(340, 360, 380, 400);
  } 
  
}
