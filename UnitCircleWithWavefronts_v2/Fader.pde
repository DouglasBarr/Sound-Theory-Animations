class Fader {

  float xCoord;
  float yCoord;
  String label;
  float value;


  Fader(float initXCoord, float initYCoord, String initLabel) {
    xCoord = initXCoord;
    yCoord = initYCoord;
    label = initLabel;
    value = 0.5;
  }

  void display() {

    noStroke();

    fill(240);
    rect(xCoord, yCoord, 30, 200, 4);

    fill(150);
    rect(xCoord, yCoord + (value*200) + 10, 30, 200-(value*200)-10, 4);

    fill(0);
    textSize(15);
    text(label, xCoord, yCoord + 240);

    rect(xCoord, yCoord + (value*200) - 15, 30, 30, 4);

    noFill();
  }

  void setValue(float newValue) {
    
    value = (newValue-yCoord)/200;
    
    if(value < 0.08){
      value = 0.08;
    }
    if(value > 0.925){
      value = 0.925;
    }
//    println(value);
  }

  boolean onDrag() {

    boolean hit = false;

    if ((mouseX > xCoord) && (mouseX < xCoord+30) && (mouseY > yCoord + (value*200) - 15) && (mouseY < yCoord + (value*200) + 15)) {
      hit = true;
    } 
    return hit;
  }
  
  float getValue(){
    return value;
  }
  
}

