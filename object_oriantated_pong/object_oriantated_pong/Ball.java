class Ball {
  private float x;
  private float y;
  private float radius;
  private float xSpeed;
  private float ySpeed;

  public static boolean [] keys = new boolean[4];

  public Ball (float x, float y, float radius, float xSpeed, float ySpeed) {
    this.x = x;
    this.y = y;
    this.radius = 12;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
  }

  public void move() {

    x = x + xSpeed;
    y = y + ySpeed;

    if (x <= 15) {
      xSpeed *= -1;
    }
    if (x >= 585) {
      xSpeed *= -1;
    }
    if (y <= 15) {
      ySpeed *= -1;
    }
    if (y >= 585) {
      ySpeed *= -1;
    }
    if (x + radius >= leftPaddle.getX() && x - radius <= leftPaddle.getX() + leftPaddle.getWidth() && y >= leftPaddle.getY() && y <= leftPaddle.getY() + leftPaddle.getHeight()) {
      xSpeed *= -1;
    }
    if (x + radius >= rightPaddle.getX() && x- radius <= rightPaddle.getX() + rightPaddle.getWidth() && y >= rightPaddle.getY() && y <= rightPaddle.getY() + rightPaddle.getHeight()) {
      xSpeed *= -1;
    }
    if (x <= 15) {
      x = 300;
      y = 300;
    }
    if (x >= 585) {
      x = 300;
      y = 300;
    }
  }





  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public float getRadius() {
    return radius;
  }

  public  float getXspeed() {
    return xSpeed;
  }
  public  float getYspeed() {
    return ySpeed;
  }
}
