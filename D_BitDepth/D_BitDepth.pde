import java.text.DecimalFormat;

int graphHeight = 200;
int graphWidth = 650;
float freq = 1;
float amplitude = graphHeight;

boolean moveFreqFader = false;
boolean moveAmpFader = false;

int freqFaderYPos = 200;
int ampFaderYPos = 200;

Fader freqFader;
Fader ampFader;

String[] sampleValues;

DecimalFormat df;

void setup() {

  size(1000, 600); 

  freqFader = new Fader(50, freqFaderYPos, "freq");
  ampFader = new Fader(135, ampFaderYPos, "amp");

  freqFader.setValue(500);
  ampFader.setValue(0);

  df = new DecimalFormat("#.#");
  
  sampleValues = new String[30];

}


void draw() {

  background(255);

  drawGraph();



  freqFader.display();
  ampFader.display();

  String freqValue = Integer.toString(int(8800 - ((freqFader.getValue()-0.08)/0.845)*8360));
  String ampValue = df.format(1 - (ampFader.getValue()-0.08)/0.845);
  

  fill(0);
  textSize(15);
  textAlign(LEFT); 
  text(freqValue, 52, freqFaderYPos + 220);
  text(ampValue, 139, ampFaderYPos + 220);
  
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


