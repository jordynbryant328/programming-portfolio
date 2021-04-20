class Button {
  // Member Variable
  int x, y, w, h;
  color c1, c2, c3, c4;
  String val;
  boolean hover, isNumber;

  // Constructor
  Button(int tempX, int tempY, int tempW, int tempH, String tempVal, boolean isNumber) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    c1 = #D3D3D3;
    c2 = #E0E0E0;
    c3 = #17E05E;
    c4 = #63D17B;
    val = tempVal;
    hover = false;
    this.isNumber = isNumber;
  }


  // Display Method
  void display() {
    if (isNumber) { //formatting numbers as buttons
      if (hover) {
        fill(c1);
      } else {
        fill(c2);
      }
      rect(x, y, w, h, 70);
      fill(0);
      textSize(15);
      textAlign(CENTER);
      text(val, x+15, y+25);
    } else {
      if (hover) {
        fill(c3);
      } else {
        fill(c4);
      }
      rect(x, y, w, h, 70);
      fill(0);
      textSize(12);
      textAlign(CENTER);
      text(val, x+15, y+25);
    } 
  }
  // Hover Method
  void hover() {
    hover = (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h);
  }
}
