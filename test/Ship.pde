class Ship {
  float x = width / 2;
  float y = height - 50;
  int r = 20;

  void checkCollision() {
    for (int i = 0; i < obstacles.size(); i++) {
      Obstacle o = obstacles.get(i);
      if (x - r <= o.right() && x + r >= o.left() && y - r <= o.bottom() && y + r >= o.top()) {
        gameOver();  
      }
    }
  }

  void draw() {    
    if (keyPressed) {
      if (keyCode == LEFT && x > 0){
        x-= 10;
      } else if (keyCode == RIGHT && x < width - 0) {
        x+= 10;
      }
    }
    
    fill(255,0,0);
    ellipse(x, y, r*2, r*2);
  }
}