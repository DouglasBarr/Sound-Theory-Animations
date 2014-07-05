void drawMolecules() {
  
  float radsOfFrameCount = radians(frameCount % 360);

  pushMatrix();
  translate(400, graphHeight*4);

  stroke(0);
  strokeWeight(1);
  for (int index = 0; index < graphHeight*2; index+=2) {
    point(0, index);
  }

  strokeWeight(2);

  stroke(255, 0, 0);
  line(-20 * (amplitude/graphHeight) * sin((TWO_PI * (0*freq)/graphWidth) - radsOfFrameCount), 0, -20 * (amplitude/graphHeight) * sin((TWO_PI * (0*freq)/graphWidth) - radians(frameCount % 360)), graphHeight*2);


  stroke(0);
  line(0, graphHeight, graphWidth, graphHeight);


  for (int index = 0; index < graphWidth; index++) {
    strokeWeight(2);
    stroke(0);
    point((index+ -20 * (amplitude/graphHeight) * sin((TWO_PI * (index*freq)/graphWidth) - radsOfFrameCount)), randomMoleculeHeightsA[index]);
    point((index+ -20 * (amplitude/graphHeight) * sin((TWO_PI * (index*freq)/graphWidth) - radsOfFrameCount)), randomMoleculeHeightsB[index]);
    point((index+ -20 * (amplitude/graphHeight) * sin((TWO_PI * (index*freq)/graphWidth) - radsOfFrameCount)), randomMoleculeHeightsC[index]);
    point((index+ -20 * (amplitude/graphHeight) * sin((TWO_PI * (index*freq)/graphWidth) - radsOfFrameCount)), randomMoleculeHeightsD[index]);
    point((index+ -20 * (amplitude/graphHeight) * sin((TWO_PI * (index*freq)/graphWidth) - radsOfFrameCount)), randomMoleculeHeightsE[index]);
    point((index+ -20 * (amplitude/graphHeight) * sin((TWO_PI * (index*freq)/graphWidth) - radsOfFrameCount)), randomMoleculeHeightsF[index]);
    point((index+ -20 * (amplitude/graphHeight) * sin((TWO_PI * (index*freq)/graphWidth) - radsOfFrameCount)), randomMoleculeHeightsG[index]);
  }

  strokeWeight(10);
  stroke(255, 0, 0);
  point(((graphWidth+1)/4 + -20 * (amplitude/graphHeight) * sin((TWO_PI * (((graphWidth+1)/4)*freq)/graphWidth) - radians(frameCount % 360))), randomMoleculeHeightsA[(graphWidth+1)/4]);




  popMatrix();
}

