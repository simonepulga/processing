class Obstacles {
  ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();

  // Obstacles() {
    
  // }

  void add(int quantity) {
    for (int i = 0; i < quantity; i++) {
      float lasty;

      if (obstacles.isEmpty()) {
        lasty = 0;
      } else {
        lasty = obstacles.get(obstacles.size()-1).ypos;
      }

      obstacles.add(new Obstacle(lasty -(height / obstaclesCount) -50));
    }
  } 

  void draw() {
    for (int i = 0; i < obstacles.size(); i++) {
      obstacles.get(i).draw();
    }
  }

  void increaseDifficulty() {
    // at 60fps, game gets harder every 2 seconds
    if (frameCount % 120 == 0) { 
      if (obstaclesCount < 15) { obstaclesCount++; }
      if (obstaclesSpeed < 30) { obstaclesSpeed++; }
    }
  }

  void process() {
    for (int i = obstacles.size() - 1; i >= 0 ; i--) {
      Obstacle o = obstacles.get(i);
      o.move();
      o.checkDeath();
      if (o.dead) { prune(i); }
    }
    if (obstacles.size() < obstaclesCount) { add(obstaclesCount - obstacles.size()); }
  }

  void prune(int i) {
    obstacles.remove(i);
  }

  int size() {
    return obstacles.size();
  }

  Obstacle get(int i) {
    return obstacles.get(i);
  }
}