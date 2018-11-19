class rightPaddle {
  private static float x;
  private static float y;
  private float paddleWidth;
  private float paddleHeight;
  float speed;

  private static int paddleCount = 1;

  rightPaddle(float x, float y, float paddleWidth, float paddleHeight, float speed) {
    this.x = x;
    this.y = y;
    this.paddleWidth = paddleWidth;
    this.paddleHeight = paddleHeight;
    this.speed = speed;
  }

  public void paddleMove() {
    if (Ball.keys[2]) {
      y -= speed;
    } else if (Ball.keys[3] == true) {
      y += speed;
    }

    if (y <= 0) {
      y = 0;
    }
    if (y + paddleHeight >= 600) {
      y = 600 - paddleHeight;
    }
  }

  public static float getX() {
    return x;
  }
  public static float getY() {
    return y;
  }
  public float getWidth() {
    return paddleWidth;
  }
  public float getHeight() {
    return paddleHeight;
  }
  public static int getPaddleCount() {
    return paddleCount;
  }
}
