void CreateBall() {
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball(random(width), random(height), random(Ball.getmaxRadius()));
  }
} 
