void drawUnitCircle(int xTranslate) {

  pushMatrix(); 
    translate(xTranslate, graphHeight*5);
  
    stroke(0);
    strokeWeight(2);
    ellipse(0, 0, graphHeight*2, graphHeight*2);
  
    strokeWeight(1);
    line(0, -(graphHeight+10), 0, graphHeight+10);
    line(-(graphHeight+10), 0, graphHeight+10, 0);
  
    pushMatrix();
      rotate((TWO_PI * (0*freq)/graphWidth) - radians(frameCount % 360));
    
      line(0, 0, 0, graphHeight);
    
      strokeWeight(10);
      stroke(255, 0, 0);
      point(0, graphHeight);
    
  
    popMatrix();

  popMatrix();
}

