void drawMassOnSpring(int xTranslate) {

  pushMatrix(); 
  translate(xTranslate, graphHeight*5);

  stroke(0);
  strokeWeight(2);

  float endPoint = 2*graphHeight+(amplitude*cos((TWO_PI - radians(frameCount % 360))));

  pushMatrix();
    translate(0, graphHeight * -2);
      
      beginShape();
      
      vertex(0, -10);
      vertex(0, endPoint*0.08);
      
      for(int index = 1; index < 9; index++){        
        vertex(10, endPoint * (index/10.0));
        vertex(-10, endPoint * ((index/10.0) + 0.05));      
      }
      
      vertex(0, endPoint*0.88);        
      vertex(0, endPoint);
      
    endShape();
  
  popMatrix();
 
  strokeWeight(20);
  stroke(255, 0, 0);

  point(0, (amplitude*cos((TWO_PI - radians(frameCount % 360)))));
  
  
  strokeWeight(1);
  
  for(int index = -50; index < 50; index+=2){
    point(index, 0);
  }  
  
  stroke(0);
  
  for(int index = -400; index < 100; index+=2){
    point(index, amplitude*cos((TWO_PI - radians(frameCount % 360))));
  }

  popMatrix();
}

