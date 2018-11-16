// collection of obstacles
Obstacles obstacles;
// total obstacles count
int obstaclesCount;
// global obstacles speed
int obstaclesSpeed;
// the player
Ship player;
// the score
Score score = new Score();

void setup() {
  frameRate(60);
  size(600, 800, P2D);
  smooth(8);
  newStart();
}

void draw() {
  background(255);

  score.increase();
  score.draw();
  player.draw();
  obstacles.process();
  obstacles.draw();
  player.checkCollision();
  obstacles.increaseDifficulty();
}

void newStart() {
  obstacles = new Obstacles();
  obstaclesCount = 3;
  obstaclesSpeed = 10;

  score.value = 0;

  player = new Ship();
  obstacles.add(obstaclesCount);
  obstacles.draw();
}

void keyPressed() {
  if (key == TAB) { loop(); newStart(); }
}

void gameOver() {
  noLoop(); score.updateHighScore();
}


