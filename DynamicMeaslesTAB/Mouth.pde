//Global Variables
int mouthOpen;
float mouthX1, mouthY1, mouthX2, mouthY2;
PImage pic1;
//
void mouthDraw() {
  //Mouth
   pic1 = loadImage("mouth.jpg");
  int mouthWidth = int ( mouthX2 - mouthX1 ); //length=end-beginning
  int mouthHeight = mouthOpen;
  //rect(mouthX1-mouthHeight*1/2, mouthY1-mouthHeight*1/2, mouthWidth+mouthOpen, mouthHeight);
  strokeWeight(mouthOpen); //testing: 100=400/4, mouthOpen=height*1/4
  //line(mouthX1, mouthY1, mouthX2, mouthY2);
  image(pic1, mouthX1+smallerDisplayDimesion*1/12, mouthY1-mouthHeight*1/2);
  strokeWeight(reset); //reset to 1 pixel
  //comparison rect() line only, no caps, no strokeWeight
  //rect(mouthX1, mouthY1, mouthWidth, mouthHeight); 
}//End mouthDraw
