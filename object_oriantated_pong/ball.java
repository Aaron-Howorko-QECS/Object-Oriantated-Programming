class Ball {
  private float x;
  private float y;
  private float radius;

  private static int ballCount = 2;
  private static int maxRadius = 25;

  public float xSpeed;
  public float ySpeed; 

  public Ball(float x, float y, float radius, float xSpeed, float ySpeed) {
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
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
  public static int getballCount() {
    return ballCount;
  }
  public static int getmaxRadius() {
    return maxRadius;
  }
  public void Ball_move() {

    x += xSpeed;
    y += ySpeed;

    if (x <= radius) {
      xSpeed *= -1;
    }
    if (x > 600 - radius) {
      xSpeed *= -1;
    }
    if (y <= radius) {
      ySpeed *= -1;
    }
    if (y >= 600 - radius) {
      ySpeed *= -1;
    }
  }
}


class paddle {
  private float x;
  private float y;
  private float width;
  private float height;

  public paddle(float x, float y, float width, float height) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  }
  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public float getWidth() {
    return width;
  }
  public float getHeight() {
    return height;
  }
}
