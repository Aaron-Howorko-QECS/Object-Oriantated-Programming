void CreateBalls() {
  float ballX = 300;
  float ballY = 300;
  float radius = 10;
  float xSpeed = random(-5, 5);
  float ySpeed = random(-5, 5);

    for (int i = 0; i < ball.length; i++) {
    ball[i] = new Ball(ballX, ballY, radius, xSpeed, ySpeed);
    ballX = 210;
  }
}
