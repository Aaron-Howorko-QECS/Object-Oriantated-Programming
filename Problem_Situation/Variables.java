class Ball {
  private float x;
  private float y;
  private float radius;
  
  private static int ballCount = 50;
  private static int maxRadius = 20;

  public Ball(float x, float y, float radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
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
    return ballCount;
  }
}
