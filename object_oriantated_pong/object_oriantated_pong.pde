private boolean game = false;
private Ball ball = new Ball(300, 300, 20);

void setup() {
  size(600, 600);
  ellipseMode(CENTER);
}

void draw() {
  Menu();

  if (game == true) {
    background(255);
    ellipse(ball.getX(), ball.getY(), ball.getRadius(), ball.getRadius());
    fill(0);
  }
}
