void drawGraph() {

  strokeWeight(2);
  stroke(0);

  pushMatrix();
  translate(300, 100);

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


    strokeWeight(10);
    point(index, graphHeight+(amplitude*sin((TWO_PI * (index*freq)/graphWidth))));

    stroke(100);
    strokeWeight(1);
    
    for (int vertIndex = graphHeight; vertIndex < graphHeight+(amplitude*sin((TWO_PI * (index*freq)/graphWidth))); vertIndex+=4) {
      point(index, vertIndex);
    }
    for (int vertIndex = graphHeight; vertIndex > graphHeight+(amplitude*sin((TWO_PI * (index*freq)/graphWidth))); vertIndex-=4) {
      point(index, vertIndex);
    }

    stroke(0);

    count++;

    //      sampleValues[count] = 
    sampleValues[count] = df.format((((graphHeight+(amplitude*sin((TWO_PI * (index*freq)/graphWidth)))) / graphHeight*2) - 2)/4);

//    textAlign(CENTER); 
//    text(sampleValues[count], index, 2.5*graphHeight);

    stroke(0);
    strokeWeight(2);
    
    line(-5, 0, 5, 0);
    line(-5, 66, 5, 66);
    line(-5, 133, 5, 133);
    line(-5, 200, 5, 200);
    line(-5, 266, 5, 266);
    line(-5, 333, 5, 333);
    line(-5, 400, 5, 400);

  }



  popMatrix();
}

