//int dim = 1000;
int shapeWidth = 100;
int xPos = 0;
int yPos = 0;

void setup() {

  size(1000, 1000);
  colorMode(HSB);
  //blendMode(MULTIPLY);
  frameRate(5);

}


void draw() {
  
  rect(xPos, yPos, shapeWidth, shapeWidth);
  //xPos = xPos + shapeWidth;
  xPos += shapeWidth;
  
  //if(xPos >= width-shapeWidth) {
  if(xPos >= width) {
      
    float myHue =  map(yPos, 0,1000, 0, 255);
    println(myHue);
    
    fill(myHue, 255,255);
    yPos += shapeWidth;
    xPos = 0;
  }
  
  
  /*fill(20,255,255,10);
  rect(0,0,shapeWidth,shapeWidth);
  
  fill(60,255,255,10);
  ellipseMode(CORNER);
  ellipse(0,200,shapeWidth,shapeWidth);*/
  
  /*float currentShapeWidth = map(mouseX, 0, width, 50, 200);
  float currentHue = map(mouseY, 0, height, 0, 255);
  fill(currentHue,255,255,10);
  noStroke();
  
  ellipse(mouseX,mouseY,currentShapeWidth,currentShapeWidth);*/
  
}
