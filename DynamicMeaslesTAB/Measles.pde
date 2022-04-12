//Global Variables
float measleDiameter, measleRadius, measleX, measleY;
float measleRectX, measleRectY, measleWidth, measleHeight;
color measleColour;
float faceRectX, faceRectY;
//
void measleDraw() {
  //Measle
  faceRectX=rectFaceX+measleRadius*2;
  faceRectY =leftEyeY+eyeDiameter*1/2+measleRadius;
  mouthOpen = smallerDisplayDimesion*1/4;
  measleDiameter = random( smallerDisplayDimesion*1/100, smallerDisplayDimesion*1/25); //Range of measle size: small=*1/100, large=4xbigger (*1/25)
  measleRadius = measleDiameter*1/2;
  measleX = random( faceRectX, (( rectFaceX+rectFaceWidth ) - measleRadius*2 ) );
  measleY = random( faceRectY, (mouthY1-mouthOpen*1/2) - measleRadius*2);  //measleY = random( faceRectY, (( rectFaceY+rectFaceHeight ) - measleRadius ) );
  nightMode=false; //Note: IF-ELSE similar to ternary operator
  measleColour = ( nightMode==false ) ? color( 255, random(0, 50), random(120) ) : color( 255, random(0, 50), 0 ) ; //ternary operator for day:night
  whiteReset=#FFFFFF;
  //
  measleRectX = measleX-measleDiameter*1/2;
  measleRectY = measleY-measleDiameter*1/2;
  measleWidth = measleDiameter;
  measleHeight = measleDiameter;
  //rect( measleRectX, measleRectY, measleWidth, measleHeight );
  //random values given other variables (similar to button code)
  noStroke(); //Shape outline
  fill(measleColour);
  ellipse( measleX, measleY, measleDiameter, measleDiameter ); 
  stroke(reset); //reset to 1 pixel
  fill(whiteReset); //reset to first colour (i.e. blackReset)
  //
}//End measleDraw
