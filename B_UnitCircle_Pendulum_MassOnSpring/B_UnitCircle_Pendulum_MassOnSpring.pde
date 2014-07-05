int graphHeight = 80;
int graphWidth = 500;
int freq = 1;
int amplitude = graphHeight;



void setup() {

  size(750, 700); 

//  frameRate(5);

}


void draw() {

  background(255);

  drawUnitCircle(200);
  
  drawPendulum(200);  
  
  drawMassOnSpring(500);
  

}

