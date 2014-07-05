void drawMolecules() {

  pushMatrix();
  translate(400, graphHeight*4);

  stroke(0);
  strokeWeight(1);
  for (int index = 0; index < graphHeight*2; index+=2) {
    point(0, index);
  }

  strokeWeight(2);

  stroke(255, 0, 0);
  line(-20 * (amplitude/graphHeight) * sin((TWO_PI * (0*freq)/graphWidth) - radians(frameCount % 360)), 0, -20 * (amplitude/graphHeight) * sin((TWO_PI * (0*freq)/graphWidth) - radians(frameCount % 360)), graphHeight*2);


  stroke(0);
  line(0, graphHeight, graphWidth, graphHeight);
  strokeWeight(2);
  stroke(0);

  for (int index = 0; index < graphWidth; index++) {

    float x = index+ -20 * (amplitude/graphHeight) * sin((TWO_PI * (index*freq)/graphWidth) - radians(frameCount % 360));
    
    point(x, randomMoleculeHeightsA[index]);
    point(x, randomMoleculeHeightsB[index]);
    point(x, randomMoleculeHeightsC[index]);
    point(x, randomMoleculeHeightsD[index]);
    point(x, randomMoleculeHeightsE[index]);
    point(x, randomMoleculeHeightsF[index]);
    point(x, randomMoleculeHeightsG[index]);
  }



  strokeWeight(10);
  stroke(255, 0, 0);
  point(((graphWidth+1)/4 + -20 * (amplitude/graphHeight) * sin((TWO_PI * (((graphWidth+1)/4)*freq)/graphWidth) - radians(frameCount % 360))), randomMoleculeHeightsA[(graphWidth+1)/4]);




  popMatrix();
}

