String title = "Wahoo!";
float titleX, titleY, titleWidth, titleHeight;
//
//CANVAS
size (500, 600); //Portrait Mode, fits on my display
//Population 
titleX = width*1/5;
titleY = height*1/10;
titleWidth = width*3/5; 
titleHeight = height*1/10; 
//
//Single Executed Code
//Fonts from OS (Operating System)
String[] fontList = PFont.list(); //To list all fonts available on OS
printArray(fontList); //For Listing all possible fonts to choose from, then createFont
titleFont = createFont(); //Verify the font exists on Processing.JAVA
// Tools / Create Font / Find Font in list to verify / Do not press "OK", known bug
//

rect(titleX, titleY, titleWidth, titleHeight);
//
//Repeatedly Executed Code
text(title, titleX, titleY, titleWidth, titleHeight);
