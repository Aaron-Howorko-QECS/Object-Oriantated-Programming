private Boolean start = false;
private Ball[] balls = new Ball[Ball.getballCount()];

public void setup() {
  size(500, 600);
  screenSizeChecker();
  ellipseMode(CENTER);
  CreateBall();
} 

public void draw() {
  startStop();

  if (start == true) {
    background(0);
    for (int i = 0; i < balls.length; i++) {
      ellipse(balls[i].getX(), balls[i].getY(), balls[i].getRadius(), balls[i].getRadius());
    }
  }
}

public void mouseClicked() {
  CreateBall();
}
