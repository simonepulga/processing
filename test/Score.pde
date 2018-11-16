class Score {
  int value, highScore;

  Score() {
    value = 0;
    highScore = 0;
  }

  void increase() {
    value++;
  }

  void updateHighScore() {
    if (value > highScore) { highScore = value; }
  }

  void draw() {
    fill(255,200,255);
    text(value, width - 100, 50, 0);
    text("High score: "+highScore, 10, 50, 0);
  }
}