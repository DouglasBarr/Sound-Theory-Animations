void drawGraph(){

  strokeWeight(2);
  stroke(0);
  
  pushMatrix();
    translate(400, graphHeight);
    
    
    beginShape();  
      for(int index = 0; index <= graphWidth+1; index++){
        curveVertex(index, graphHeight+(amplitude*sin((TWO_PI * (index*freq)/graphWidth) - radians(frameCount % 360))));
      }
    endShape(); 
    
    line(0, 0, 0, graphHeight*2);
    line(0, graphHeight, graphWidth, graphHeight);
    
    
    stroke(255, 0, 0);
    strokeWeight(10);
    point((graphWidth+1)/4, graphHeight+(amplitude*sin((TWO_PI * ((graphWidth+1)/4*freq)/graphWidth) - radians(frameCount % 360))));
    stroke(0);

   /* 
    for(int index = 40; index <= graphWidth+1; index+=40){
      strokeWeight(10);
      point(index, graphHeight+(amplitude*sin((TWO_PI * (index*freq)/graphWidth) + radians(frameCount % 360))));
      
      strokeWeight(1);
      line(index, graphHeight, index, graphHeight+(amplitude*sin((TWO_PI * (index*freq)/graphWidth) + radians(frameCount % 360))));
    }
   */

  
  popMatrix();
  
}

