void drawGraph(){

  strokeWeight(2);
  stroke(0);
  
  pushMatrix();
    translate(400, graphHeight);

    beginShape();  
      for(int index = startPoint; index < startPoint+graphWidth; index++){
        curveVertex(index-startPoint, graphHeight+(amplitude*graphWavetable[index]));
      }
    endShape(); 
    
    line(0, 0, 0, graphHeight*2);
    line(0, graphHeight, graphWidth, graphHeight);
    
    //  sin((TWO_PI * (index*freq)/graphWidth) - radians(frameCount % 360))

    stroke(255, 0, 0);
    strokeWeight(10);
    point((graphWidth+1)/4, graphHeight+(amplitude*graphWavetable[startPoint+(graphWidth+1)/4]));
    stroke(0);
  
  popMatrix();
  
}

