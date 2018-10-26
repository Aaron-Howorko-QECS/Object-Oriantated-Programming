class Ball {
  private float x;
  private float y;
  private float radius;

  private static int ballCount = 2000;
  private static int maxRadius = 25;
  public int targetX;
  public int targetY;

  public Ball(float x, float y, float radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
  }

  void step() {
    
        if (x < targetX) {
      x++;
    } else {
      x--;
    }

    if (y < targetY) {
      y++;
    } else {
      y--;
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
  public static int getballCount() {
    return ballCount;
  }
  public static int getmaxRadius() {
    return maxRadius;
  }
}
