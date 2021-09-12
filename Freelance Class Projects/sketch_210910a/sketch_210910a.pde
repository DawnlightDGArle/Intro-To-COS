//VARIABLES
//Explicitly or implicitly typed
//Strongly or weakly typed
//Java is strongly and explicitly typed

//declare a variable
//give it a data type and a name
//self-documenting code


/*PRIMITIVES IN JAVASCRIPT

INTEGER TYPES

name:       byte    short            int              long
size(bits): 8        16               32               64 
range:  -128->127  -2^15->2^15-1   -2^31->2^31-1      -2^63->2^63-1

FLOATING POINT TYPES

name:    float      double
size:     32          64

OTHER

name:    boolean        char
size:      16            16
         true/false      'a' 'A'  '\r' '\\'  '\n' '\t' '\''
         
Processing colour datatype

color 

String "This is a sentence. It can go on forever."
*/

//int x; //declaration
//x = 5; //initialisation
/*int x = 5; //declaration and initialisation
long l = 500000000000l;
byte b = 4;
short s = 5;

float y = 4.5f;
double z = 5.4;

char c = 'a';
boolean b2 = true; //true or false

String str = "banana";
color c2 = color(255,0,0,200);
*/

int ballX, ballY;

void setup() {
  size(600,600);
  ballX = width/2;
  ballY = height/2;
  
}

void draw() {
  background(#00ACE0);
  fill(#87CEFA);
  ellipse(ballX, ballY, 100, 100);
}

void mouseMoved() {
  ballX = mouseX;
  ballY = mouseY;
  
}
