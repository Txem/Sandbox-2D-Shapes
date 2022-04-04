//Global Variables
int smallerDisplayDimesion;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter; 
//
//Display Geomtery
size(600, 400); //fullScreen(); displayWidth, displayHeight
//Landscape, not square or portrait
println (width, height, displayWidth, displayHeight); //Verification of values
//Display Orientation: a few comparisons for IFs
//Computer Tells us the orientation, important for Cell Phone Orientation
//if ( width >= height ) {println("Landscape or Square");} else {println("Portrait");}
String orientation = ( width >= height ) ? "Landscape or Square": "Portrait"; //Ternary Operator, repeats IF-ELSE
println("Display Orientation:", orientation); //Verify variables
if ( orientation=="Portrait" ) println("Turn your phun");
/*
if ( orientation=="Landscape or Square" ) {
  //Empty IF
} else { 
  println("Turn your phun"); //FUN
}
*/
//
//Variable Population
smallerDisplayDimesion = height; //ALWAYS in Landscape
rectFaceX = (width*1/2) - (smallerDisplayDimesion*1/2);
rectFaceY = height*0;
rectFaceWidth = smallerDisplayDimesion; //Square Shape
rectFaceHeight = smallerDisplayDimesion; //Square Shape
faceX = width*1/2;
faceY = height*1/2;
faceDiameter = smallerDisplayDimesion;
leftEyeX = width*1.4/4;
rightEyeX = width*2.6/4;
leftEyeY = height*1/4;
rightEyeY = leftEyeY; //Best Practice: change one line of code
eyeDiameter = smallerDisplayDimesion*1/4;
mouthX1 = leftEyeX;
mouthY1 = height*3/4;
mouthX2 = rightEyeX;
mouthY2 = mouthY1;
//
//Face: Circle = Inscribing a Circle in a Square
//Center a circle on display orientation
rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
ellipse(faceX, faceY, faceDiameter, faceDiameter);
//
//Left Eye
//rect();
ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
//
//Right Eye
//rect();
ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
//
//Nose
triangle(xNose1,yNose1, xNose2, xNose3, yNose3)
//
//Mouth
line(mouthX1, mouthY1, mouthX2, mouthY2);
//
//Measle
//rect();

//
//Measles
