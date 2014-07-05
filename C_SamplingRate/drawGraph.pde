void drawGraph() {

  strokeWeight(2);
  stroke(0);

  pushMatrix();
  translate(250, 50);

  //  stroke(255, 0, 0);
  //  strokeWeight(10);
  //  point(0, 0);
  //  strokeWeight(2);
  //  stroke(0);


  beginShape();  
  for (int index = 0; index <= graphWidth+1; index++) {
    curveVertex(index, graphHeight+(amplitude*sin((TWO_PI * (index*freq)/graphWidth))));
  }
  endShape(); 

  line(0, 0, 0, graphHeight*2);
  line(0, graphHeight, graphWidth, graphHeight);


  //    stroke(255, 0, 0);
  //    strokeWeight(10);
  //    point((graphWidth+1)/4, graphHeight+(amplitude*sin((TWO_PI * ((graphWidth+1)/4*freq)/graphWidth))));
  //    stroke(0);

  int count = 0;

  for (int index = 40; index <= graphWidth+1; index+=40) {

    stroke(100);
    strokeWeight(1);
    for (int vertIndex = 0; vertIndex < graphHeight*1.3; vertIndex+=4) {
      point(index, graphHeight+vertIndex);
    }
    stroke(0);

    strokeWeight(10);
    point(index, graphHeight+(amplitude*sin((TWO_PI * (index*freq)/graphWidth))));

    strokeWeight(1);
    line(index, graphHeight, index, graphHeight+(amplitude*sin((TWO_PI * (index*freq)/graphWidth))));



    count++;

    //      sampleValues[count] = 
    sampleValues[count] = df.format((((graphHeight+(amplitude*sin((TWO_PI * (index*freq)/graphWidth)))) / graphHeight*2) - 2)/-2);

    textAlign(CENTER); 
    text(sampleValues[count], index, 2.5*graphHeight);
  }



  popMatrix();
}

