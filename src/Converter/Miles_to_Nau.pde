void setup () {
  size(400,400);
}

void draw() {
  background(190,220,250);
  textSize(16);
  textAlign(CENTER);
text ("Miles to Nautical Miles",width/2,25);
text("Jo Bryant | Oct 2020", width/2, 50);
textSize(12);
textAlign(CENTER);
text("Drag the boat across the measurement line \n to see a conversion of miles to nautical miles", width/2, 75);
line(0,200,width,200);
  for(int i=0; i<width; i+=20) {
    line(i,196,i,204);
    textSize(8);
    textAlign(CENTER);
    text(i,i,194);
  }

arc(mouseX-10, 250, 40, 40, 0, PI+QUARTER_PI, CHORD);
fill(255,0,0);
line(mouseX-10, 242, mouseX, 220);
triangle(mouseX, 220, mouseX+15, 238, mouseX-7, 238);
fill(255);
  textSize(10);
  text("Nau:" + convertToNau (mouseX), mouseX,175);
  
  println("convert 50 miles to nau: " + convertToNau(50.0));
}

float convertToNau(float val){
  val = val/(1.151);
  return val;
}
