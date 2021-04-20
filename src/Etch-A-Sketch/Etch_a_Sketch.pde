// Global variables
int x, y;

void setup() {
  size(400, 400);
  frameRate(10);
  x = 10;
  y = 10;
}

void draw() {
  fill(0);
  drawName();
  noLoop();
}

// Algorithm for your first name
void drawName() {
  moveRight(120);
  moveLeft(60);
  moveDown(100);
  moveLeft(50);
  moveUp(30);
  moveDown(30);
  moveRight(80);
  moveUp(80);
  moveRight(50);
  moveDown(80);
  moveLeft(50);
}


// Method to draw right lines
void moveRight(int rep) {
  for (int i = 0; i<rep; i++) {
    point(x+i, y);
  }
  x=x+rep;
}

// Method to draw left lines
void moveLeft(int rep) {
  for (int i = 0; i<rep; i++) {
    point(x-i, y);
  }
  x=x-rep;
}

// Method to draw up lines
void moveUp(int rep) {
  for (int i = 0; i<rep; i++) {
    point(x, y-i);
  }
  y=y-rep;
}

// Method to draw down lines
void moveDown(int rep) {
  for (int i = 0; i<rep; i++) {
    point(x, y+i);
  }
  y=y+rep;
}

// Method to draw down right lines
void moveDownRight(int rep) {
  for (int i = 0; i<rep; i++) {
    point(x+i, y+i);
  }
  x=x+rep; 
  y=y+rep;
}

// Method to draw down left lines
void moveDownLeft(int rep) {
  for(int i = 0; i<rep; i++) {
    point(x-i, y-i);
  }
  x=x-rep;
  y=y-rep;
}

// Method to draw up right lines
