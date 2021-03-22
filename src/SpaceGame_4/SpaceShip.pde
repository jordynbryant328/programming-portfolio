class SpaceShip {
  // member variables 
  int x, y, health, lives, rad;
  color c;

  // constructor
  SpaceShip(color c) {
    x = 0;
    y = 0;
    health = 100;
    lives = 3;
    this.c = c;
    rad = 15;
  }

  // member methods
  void display(int x, int y) {
    this.x =x;
    this.y =y;
    fill(180);
    rectMode(CENTER);
    rect(x+28, y+20, 20, 20);
    rect(x-28, y+20, 20, 20);
    fill(c);
    fill(250);
    triangle(x, y-35, x+50, y+20, x-50, y+20);
    fill(c);
    ellipse(x, y, 55, 80);
    fill(190, 220, 250);
    ellipse(x, y-15, 15, 17);
  }

  // method will detect rock vs ship
  boolean rockIntersection(Rock rock) {
    float distance = dist(x, y, rock.x, rock.y);
    if (distance < rad + rock.rad) {
      return true;
    } else {
      return false;
    }
  }
}
