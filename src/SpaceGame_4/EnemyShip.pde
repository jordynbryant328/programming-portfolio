class EnemyShip {
  // member variables 
  int x,y,health;
  color c;

  // constructor
  EnemyShip(color c) {
  x = 0;
  y = 0;
  health = 100;
  this.c = c;
  }

  // member methods
  void display(int x, int y) {
  fill(#76E86E);
  ellipse(x, y, 30, 20);
  fill(#E0E3E1);
  ellipse(x, y-5, 10, 15);
  }
}
