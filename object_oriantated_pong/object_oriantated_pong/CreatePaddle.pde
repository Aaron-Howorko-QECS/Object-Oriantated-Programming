void createPaddle() {
  float speed = 5;
  float paddle1X = 50;
  float paddle1Y = 225;
  float paddleWidth = 20;
  float paddleHeight = 125;

  float paddle2X = 525;
  float paddle2Y = 225;
  for (int i=0; i < left.length; i++) {

    left[i] = new leftPaddle(paddle1X, paddle1Y, paddleWidth, paddleHeight, speed);
    right[i] = new rightPaddle(paddle2X, paddle2Y, paddleWidth, paddleHeight, speed);
  }
}
