Button[] numButtons = new Button[10];
Button[] opButtons = new Button[12];
String dVal;
String op = ""; //operator to use in a calculation
float r = 0.0; //what is right of the operator
float l = 0.0; //what is left of the operator
float result = 0.0; //the answer
boolean left = true;

void setup () {
  size(540, 640);
  dVal = "0";
  op = "";
  numButtons[0] = new Button(240, 420, 60, 60, "0", true);
  numButtons[1] = new Button(120, 140, 60, 60, "1", true);
  numButtons[2] = new Button(240, 140, 60, 60, "2", true);
  numButtons[3] = new Button(360, 140, 60, 60, "3", true);
  numButtons[4] = new Button(120, 230, 60, 60, "4", true);
  numButtons[5] = new Button(240, 230, 60, 60, "5", true);
  numButtons[6] = new Button(360, 230, 60, 60, "6", true);
  numButtons[7] = new Button(120, 330, 60, 60, "7", true);
  numButtons[8] = new Button(240, 330, 60, 60, "8", true);
  numButtons[9] = new Button(360, 330, 60, 60, "9", true);
  opButtons[0] = new Button(120, 420, 60, 60, "C", false);
  opButtons[1] = new Button(360, 420, 60, 60, ".", false);
  opButtons[2] = new Button(240, 510, 60, 60, "=", false);
  opButtons[3] = new Button(50, 130, 30, 30, "+/-", false);
  opButtons[4] = new Button(50, 170, 30, 30, "+", false);
  opButtons[5] = new Button(50, 210, 30, 30, "-", false);
  opButtons[6] = new Button(50, 250, 30, 30, "x", false);
  opButtons[7] = new Button(50, 290, 30, 30, "/", false);
  opButtons[8] = new Button(50, 330, 30, 30, "%", false); 
  opButtons[9] = new Button(50, 370, 30, 30, "x^2", false);
  opButtons[10] = new Button(50, 400, 30, 30, "?", false);
  opButtons[11] = new Button(50, 440, 30, 30, "?", false);
}

void draw () {
  background(250);
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover();
  }
  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].display();
    opButtons[i].hover();
  }
  updateDisplay();
}


void updateDisplay () {
  fill(250);
  rect(10, 10, width-20, 100, 8);
  textSize(25);
  fill(120, 170, 250);
  textAlign(RIGHT);
  println("L:" + 1 + "R:" + r + "Op:" + op);
  println("Result:" + result + "Left:" + left);
  text(dVal, width-80, 80);
}

void mouseReleased() {      
  for (int i=0; i<numButtons.length; i++) {
    if (numButtons[i].hover && dVal.length()<20) {
      handleEvent(numButtons[i].val, true);
    }
  }

  for (int i=0; i<opButtons.length; i++) {
    if (opButtons[i].hover) {
      handleEvent (opButtons[i].val, false);
    }
  }
}
void keyPressed() {
  println("KEY:" + key + "keyCode:" + keyCode);

  if (key == '0') {
    handleEvent ("0", true);
  } else if (key == '1') {
    handleEvent ("1", true);
  } else if (key == '2') {
    handleEvent ("2", true);
  } else if (key == '3') {
    handleEvent ("3", true);
  } else if (key == '4') {
    handleEvent ("4", true);
  } else if (key == '5') {
    handleEvent ("5", true);
  } else if (key == '6') {
    handleEvent ("6", true);
  } else if (key == '7') {
    handleEvent ("7", true);
  } else if (key == '8') {
    handleEvent ("8", true);
  } else if (key == '9') {
    handleEvent ("9", true);
  } else if (key == '+') {
    handleEvent ("+", false);
  } else if (key == '-') {
    handleEvent ("-", false);
  } else if (key == '*') {
    handleEvent ("x", false);
  } else if (key == '/') {
    handleEvent ("/", false);
  } else if (key == '.') {
    handleEvent (".", false);
  } else if (key == 27 || key == 'C') {
    handleEvent ("C", false);
  } else if (key == 10) {
    if (keyCode == ENTER || keyCode == RETURN) {
      handleEvent ("=", false);
    }
  }
}

String handleEvent(String val, boolean num) {
  if (left & num) {
    if (dVal.equals("0") || result == 1) {
      dVal = (val);
      l = float(dVal);
    } else {
      dVal += (val);
      l = float (dVal);
    }
  } else if (left && num) {
    if (dVal.equals("0") || result == 1) {
      dVal = (val);
      r = float(dVal);
    } else {
      dVal += (val);
      r = float(dVal);
    }
  } else if (val.equals("C")) {
    dVal = "0";
    result = 0.0;
    left = true;
    r = 0.0;
    l = 0.0;
    op = "";
  } else if (val.equals ("+")) {
    if (left) {
      performCalc();
    } else {
      op = "+";
      left = false;
      dVal = "0";
    }
  } else if (val.equals("-")) {
    op = "-";
    left = false;
    dVal = "0";
  } else if (val.equals("x")) {
    op = "x";
    left = false;
    dVal = "0";
  } else if (val.equals("/")) {
    op = "/";
    left = false;
    dVal = "0";
  } else if (val.equals("+/-")) {
    if (left) {
      l *= -1;
      dVal = str(l);
    } else {
      r *= -1;
      dVal = str(r);
    }
  }else if (val.equals("%")) {
    if (left) {
      l *= 0.1;
      dVal = str(l);
    } else {
      r *= 0.1;
      dVal = str(r);
    }
  } else if (val.equals("x^2")) {
    if (left) {
      l = sq(l);
      dVal = str(l);
    } else {
      r = sq(r);
      dVal = str(r);
    }
  } else if (val.equals(".") && dVal.contains(".")) {
    dVal += (val);
  } else if (val.equals("=")) {
    performCalc();
  }
  return val;
}


void performCalc() {
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("-")) {
    result = l - r;
  } else if (op.equals("x")) {
    result = l * r;
  } else if (op.equals("/")) {
    result = l / r;
  }
  l = result;
  dVal = str(result);
  left = true;
}
