class Rock {
  // member variables
  int x, y, health, speed, rad;
  PImage rock1;

  // constructor
  Rock(int x, int y) {
    this.x = x;
    this.y = y;
    health = 10;
    speed = int(random(2, 4));
    rad = 30;
    rock1 = loadImage("asteroid.png");
  }

  boolean reachedBottom() {
    if (y > height + 50) {
      return true;
    } else {
      return false;
    }
  }

  void move() {
    y+=speed;
  }

  // member methods
  void display () {
    noStroke();
    imageMode(CENTER);
    rock1.resize(100,100);
    image(rock1, x, y);
  }

  // method will detect rock vs blaster
  boolean blasterIntersection( Blaster blaster) {
    float distance = dist(x, y, blaster.x, blaster.y);
    if (distance < rad + blaster.rad) {
      return true;
    } else {
      return false;
    }
  }
}
