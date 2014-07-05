void drawUnitCircle() {

  pushMatrix(); 
    translate(graphHeight*2, graphHeight*2);
  
    strokeWeight(1);
    
    for(float index = 0; index < 1000; index+=10){
     pushMatrix(); 
       rotate((index/1000) * TWO_PI);
       point(graphHeight, 0);
     popMatrix(); 
    }
  
    stroke(0);
    strokeWeight(2);
    ellipse(0, 0, amplitude*2, amplitude*2);
  
    strokeWeight(1);
    line(0, -(graphHeight+10), 0, graphHeight+10);
    line(-(graphHeight+10), 0, graphHeight+10, 0);
  
    pushMatrix();
      rotate((TWO_PI * ((graphWidth+1)/4*freq)/graphWidth) - radians(frameCount % 360) - radians(90));
    
      line(0, 0, 0, amplitude);
    
      strokeWeight(10);
      stroke(255, 0, 0);
      point(0, amplitude);
    
  
    popMatrix();
  
    stroke(0);
    strokeWeight(1);
  
    for (int index = -110; index < 450; index+=3) {
//      point(index, (amplitude*sin(TWO_PI * ((graphWidth+1)/4*freq)/graphWidth) - radians(frameCount % 360) - radians(90)));
      point(index, (amplitude*sin((TWO_PI * ((graphWidth+1)/4*freq)/graphWidth) - radians(frameCount % 360))));
    }

  popMatrix();
}


