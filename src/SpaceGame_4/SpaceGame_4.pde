// SpaceGame 2020 December
// by Jordyn Bryant

SpaceShip s1;
ArrayList<Blaster> blasters;
ArrayList<Rock> rocks;
ArrayList<Star> stars;
Timer timer;
int score, pass;
boolean play;
import processing.sound.*;
SoundFile file;

void setup () {
  size(550, 550);
  s1 = new SpaceShip(#F7C06B);
  blasters = new ArrayList();
  rocks = new ArrayList();
  stars = new ArrayList();
  timer = new Timer(int(random(1000, 5000)));
  timer.start();
  score = 0;
  pass = 0;
  play = false;
  file = new SoundFile(this, "Blaster.wav");
}

void draw () {
  noCursor();
  // GamePlay
  if (!play) {
    startScreen();
  } else {
    background(0);

    stars.add(new Star(int(random(width)), int(random(height)), color (random(100, 255))));
    for (int i = 0; i < stars.size(); i++) {
      Star star = stars.get(i);
      star.display();
      star.move();
      if (star.reachedBottom()) {
        stars.remove(star);
      }
    }

    if (timer.isFinished()) {
      rocks.add(new Rock(int(random(width)), -50));
      timer.start();
    }

    // Rock rendering and collision
    for (int i = 0; i < rocks.size(); i++) {
      Rock rock = rocks.get(i);
      rock.display();
      rock.move();
      // Rock vs Ship Collison
      if (s1.rockIntersection(rock)) {
        s1.health-=rock.health;
        rocks.remove(rock);
      }
      if (rock.reachedBottom()) {
        pass++;
        rocks.remove(rock);
        score += rock.health;
      }
    }

    for (int i = 0; i < blasters.size(); i++) {
      Blaster blaster = blasters.get(i);
      blaster.display();
      blaster.fire();
      // Baster vs Rock Intersection
      for (int j = 0; j < rocks.size(); j++) {
        Rock rock = rocks.get(j);
        if (rock.blasterIntersection(blaster)) {
          rock.health-=4;
          blasters.remove(blaster);
          if (rock.health < 1) {
            rocks.remove(rock);
            score-=rock.health;
          }
        }
      }
      if (blaster.reachedTop()) {
        blasters.remove(blaster);
      }
    }
    infoPanel();
    s1.display(mouseX, mouseY);
    
    // GameOver Logic
    if(s1.health<1 || pass>10) {
      play = false;
      gameOver();
    }
  }
}

void mousePressed() {
  blasters.add(new Blaster(#79D1FF, s1.x, s1.y));
  file.play();
}

void keyPressed() {
  //use spacebar
}

void startScreen() {
  background(#202989);
  textAlign(CENTER);
  text("Welcome to SpaceGame!", width/2, height/2);
  text("Please click to continue...", width/2, height/2+20);
  
  if(mousePressed) {
    play = true;
  }
}

void gameOver() {
  background(#202989);
  textAlign(CENTER);
  text("Game Over!", width/2, height/2);
  text("Final Score:" + score, width/2, height/2+20);
  noLoop();
}
  

void infoPanel() {
  fill(128, 128);
  rectMode(CORNER);
  rect(0, height-50, width, 50);
  fill(255, 255);
  text("Health: " + s1.health, 20, height-20);
  text("Lives: " + s1.lives, 120, height-20);
  text("Level: ", 200, height-20);
  text("Score: " + score, 250, height-20);
}
