//Text Lesson
// 
// Global Variables
//
String title = "Wahoo!";
String body = "I am very happy for you.";
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;  
PFont bodyFont;
color purple = #2913AD, resetDefaultInk=#FFFFFF, red=#C61C1C; //not nightMode friendly
int titleSize;
int bodySize;
float xBody, yBody, widthDiameterBody, heightDiameterBody, smallerDimension, xCenter;
//
void setup() {
  size (600, 700); //Portrait Mode, fits on my display
  //Population 
  xCenter = width/2;
  float yCenter = height/2;
  if ( width >= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  titleX = width*1/5;
  titleY = height*1/10;
  titleWidth = width*3/5; 
  titleHeight = height*1/10; 
  xBody =width/2;
  yBody = height/2;
  widthDiameterBody = smallerDimension*3/5;
  heightDiameterBody = smallerDimension*3/5;
  //
  //Single Executed Code
  //Fonts from OS (Operating System)
  String[] fontList = PFont.list(); //To list all fonts available on OS
  printArray(fontList); //For Listing all possible fonts to choose from, then createFont
  titleFont = createFont("Harrington", 55); //Verify the font exists on Processing.JAVA
  //
  printArray(fontList); //For Listing all possible fonts to choose from, then createFont
  bodyFont = createFont("Stencil", 40);
  // Tools / Create Font / Find Font in list to verify / Do not press "OK", known bug
  //
  // Layout our text space and typographical features 
  rect(titleX, titleY, titleWidth, titleHeight);
  ellipse(xBody, yBody, widthDiameterBody, heightDiameterBody);
}//End setup()
//
void draw() {
  //
  fill(purple); //Ink, hexidecimal copied from Color Selector 
  textAlign(CENTER, CENTER); // Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP| CENTER | BOTTOM | BASELINE]
  titleSize = 50; //Change this number until it fits 
  textFont(titleFont, titleSize); 
  text(title, titleX, titleY, titleWidth, titleHeight);
  fill(resetDefaultInk);
  //
  fill(purple); //Ink, hexidecimal copied from Color Selector 
  textAlign(CENTER, TOP); // Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP| CENTER | BOTTOM | BASELINE]
  bodySize = 40; //Change this number until it fits 
  textFont(bodyFont, bodySize); 
  text(xBody, yBody, widthDiameterBody, heightDiameterBody);
  fill(resetDefaultInk);
  //
}//End draw()
//
//void keyPressed() {}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN program 
//

//
//CANVAS


//End Program 
