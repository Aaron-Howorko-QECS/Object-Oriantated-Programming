
Ball ball = new Ball(250, 250, 25);

void setup() {
  size(600, 600);
  ellipseMode(CENTER);
}

void draw() {

  ball.step();

  background(0);
  ellipse(ball.getX(), ball.getY(), ball.getDiameter(), ball.getDiameter());
}
void mouseClicked() {
  ball.targetX = mouseX;
  ball.targetY = mouseY;
}
