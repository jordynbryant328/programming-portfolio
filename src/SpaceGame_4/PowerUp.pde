class PowerUp {
   // member variables
  int x,y, speed, r, pu;

  // constructor
  PowerUp(int x, int y) {
  this.x = x;
  this.y = y;
  r = 80;
  speed = int(random(2,7));
  pu = int(random(4));
  }
  
  // member methods
  void display () {}
}
