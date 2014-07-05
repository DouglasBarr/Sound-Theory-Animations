void drawPendulum(int xTranslate) {

  pushMatrix(); 
  translate(xTranslate, graphHeight*2);

  stroke(0);
  strokeWeight(1);
  line(0, -(graphHeight+10), 0, graphHeight+10);
  line(-(graphHeight+10), graphHeight, graphHeight+10, graphHeight);

  line(0, -graphHeight, (amplitude*cos(radians(90) + (TWO_PI - radians(frameCount % 360)))), graphHeight+(10*cos(radians(90) + (PI - radians(frameCount % 180)))));

  for(int index = -100; index < 350; index+=2){
   
    point((amplitude*cos(radians(90) + (TWO_PI - radians(frameCount % 360)))), index);
    
  }

  strokeWeight(20);
  stroke(255, 0, 0);

  point((amplitude*cos(radians(90) + (TWO_PI - radians(frameCount % 360)))), graphHeight+(10*cos(radians(90) + (PI - radians(frameCount % 180)))));


  popMatrix();
}

