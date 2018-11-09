class Firework {
  //Variables
  private float x;
  private float y;
  private color c;
  private float diameter;
  private float xSpeed;
  private float ySpeed;
  private float gravity;

  int count = 25;


  //Constructor
  Firework (float width, float height) {
    this.x = mouseX; //random (width);
    println("x = ", x);
    this.y = mouseY; //random (height);
    println("y =", y);
    this.c = color( int(random(255)), int(random(255)), int(random(255)) );
    println("color =", c);
    this.diameter = random(width*1/30);
    println ("diameter = ", diameter);
    this.xSpeed = random(-20, 20);
    this.ySpeed = random(-20, 20);
    gravity = 0.5;
  }
  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public color getC() {
    return c;
  }
  public float getDiameter() {
    return diameter;
  }
  public float getXSpeed() {
    return xSpeed;
  }
  public float getYSpeed() {
    return ySpeed;
  }
  public float getGravity() {
    return gravity;
  }

  void step() {
    x += xSpeed;
    y += ySpeed;
    ySpeed += gravity;
  }
  void display() {
    
    for (int i=0; i < firework.length; i++) {
      fill(firework[i].getC());
      ellipse(firework[i].getX(), firework[i].getY(), firework[i].getDiameter(), firework[i].getDiameter());
      
    }
  }
}
