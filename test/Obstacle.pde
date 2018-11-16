class Obstacle {
  float xpos, ypos, speed;
  boolean dead = false;

  Obstacle(float starting_position) {
    xpos = random(width);
    ypos = starting_position;
    speed = obstaclesSpeed;
  }

  void draw() {
    fill(0);
    rectMode(CENTER);
    rect(xpos, ypos, 40, 100);
  }

  void move() {
    ypos += speed;
  }

  void checkDeath() {
    if (ypos > height + 50) {
      dead = true;
    }
  }

  float right() {
    return xpos + 20;
  }

  float left() {
    return xpos - 20;
  }

  float top() {
    return ypos - 50;
  }

  float bottom() {
    return ypos + 50;
  }
}