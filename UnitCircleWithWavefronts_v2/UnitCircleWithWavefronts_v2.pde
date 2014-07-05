import java.text.DecimalFormat;

int graphHeight = 80;
int graphWidth = 500;
float freq = 1;
float amplitude = graphHeight;

boolean moveFreqFader = false;
boolean moveAmpFader = false;

Fader freqFader;
Fader ampFader;

float[] randomMoleculeHeightsA;
float[] randomMoleculeHeightsB;
float[] randomMoleculeHeightsC;
float[] randomMoleculeHeightsD;
float[] randomMoleculeHeightsE;
float[] randomMoleculeHeightsF;
float[] randomMoleculeHeightsG;

float[] graphWavetable;
float[] pointWavetable;

int startPoint;

DecimalFormat df;

void setup() {

  size(1000, 600); 
  frameRate(200);

  freqFader = new Fader(100, 300, "freq");
  ampFader = new Fader(185, 300, "amp");

  freqFader.setValue(500);
  ampFader.setValue(0);

  df = new DecimalFormat("#.#");
  
//  sin((TWO_PI * (index*freq)/graphWidth) - radians(frameCount % 360))

  graphWavetable = new float[2*graphWidth+1];
  pointWavetable = new float[2*graphWidth+1];
  
  for (int index = 0; index < graphWidth*2; index++){
     graphWavetable[index] = sin((TWO_PI * (index*freq)/graphWidth) - radians(frameCount % 360));
     pointWavetable[index] = sin((TWO_PI * ((graphWidth+1)/4*freq)/graphWidth) - radians(frameCount % 360));
  }
  
  graphWavetable[graphWidth] = 0; 
  pointWavetable[graphWidth] = 0;

  randomMoleculeHeightsA = new float[graphWidth];
  randomMoleculeHeightsB = new float[graphWidth];
  randomMoleculeHeightsC = new float[graphWidth];
  randomMoleculeHeightsD = new float[graphWidth];
  randomMoleculeHeightsE = new float[graphWidth];
  randomMoleculeHeightsF = new float[graphWidth];
  randomMoleculeHeightsG = new float[graphWidth];

  for (int index = 0; index < graphWidth; index++) {
    randomMoleculeHeightsA[index] = random(0, graphHeight*2);
    randomMoleculeHeightsB[index] = random(0, graphHeight*2);
    randomMoleculeHeightsC[index] = random(0, graphHeight*2);
    randomMoleculeHeightsD[index] = random(0, graphHeight*2);
    randomMoleculeHeightsE[index] = random(0, graphHeight*2);
    randomMoleculeHeightsF[index] = random(0, graphHeight*2);
    randomMoleculeHeightsG[index] = random(0, graphHeight*2);
  }
}


void draw() {

  background(255);
  
  startPoint = frameCount % graphWidth;

  drawGraph();

  drawUnitCircle();

  drawMolecules();

  freqFader.display();
  ampFader.display();

  String freqValue = Integer.toString(int(8800 - ((freqFader.getValue()-0.08)/0.845)*8360));
  String ampValue = df.format(1 - (ampFader.getValue()-0.08)/0.845);
  

  fill(0);
  textSize(15);
  
  text(freqValue, 102, 300 + 220);
  text(ampValue, 189, 300 + 220);
  
  noFill();


  if (mousePressed) {
    if (freqFader.onDrag() && (moveAmpFader == false)) {
      moveFreqFader = true;
    }

    if (ampFader.onDrag() && (moveFreqFader == false)) {
      moveAmpFader = true;
    }
  }

  freq = 20 - (freqFader.getValue() * 20);
  amplitude = graphHeight - (graphHeight * (ampFader.getValue()-0.08)/0.845);
}

void mouseReleased() { 
  moveFreqFader = false;
  moveAmpFader = false;
}

void mouseDragged() {

  if (moveFreqFader) {
    freqFader.setValue(mouseY);
  }

  if (moveAmpFader) {
    ampFader.setValue(mouseY);
  }
}


