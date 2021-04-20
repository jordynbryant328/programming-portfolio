//Jo Bryant | Computer Timeline
//Sept. 2020
boolean hover = false;

void setup() {
  size(900, 400);
}

void draw() {
  background(150, 200, 240);
  println(hover);
  drawRef();
  histEvent(100, 200, 125, 25, "Model K (1937)", "Bell Labs engineer, George Stibitz's first binary adder \n (first in the world)", true);
  histEvent(100, 275, 150, 25, "Z2 Computer (1940)", "The first electromechanical relay computer \n made by German engineer Konrad Zuse", false);
  histEvent(275, 275, 125, 25, "ABC (1942)", "Description 3", false);
  histEvent(275, 200, 160, 25, "Harvard Mark 1 (1944)", "IBM constructed replica of the Z3, but not Turing-complete", true);
  histEvent(475, 200, 125, 25, "Title 5", "Description 5", true);
  histEvent(475, 275, 125, 25, "Title 6", "Description 6", false);
  histEvent(625, 200, 125, 25, "Title 7", "Description 7", true);
  histEvent(625, 275, 125, 25, "Title 8", "Description 8", false);
}

void drawRef() {
  //Draws the timeline
  strokeWeight(5);
  stroke(50);
  line(100, 250, 800, 250);

  //Draws title info
  textAlign(CENTER);
  textSize(30);
  text("History of Computers", width/2, 65);

  //Descriptive text
  textSize(14);
  text("A timeline of important events in digital history", width/2, 85);
  text("Jo Bryant | 2020", width/2, 100);
}

void histEvent(int x, int y, int w, int h, String title, String description, boolean top) {
  //Detection of the mouseover
  hover = (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h);

  //Draw a rectangle
  strokeWeight(2);
  if (hover == true) {
    fill(118);
    text(description, 200, 350);
  } else {
    fill(255);
  }
  rect(x, y, w, h, 4);

  //Text overlay
  textAlign(LEFT);
  fill(0);
  text(title, x+5, y+20);

  //Connecting line to the timeline
  if (top == true) {
    line(x+20, y+25, x+35, y+50);
  } else {
    line(x+20, y, x+35, y-25);
  }
}
