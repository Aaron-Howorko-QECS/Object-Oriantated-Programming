
class Ball {
  float x;
  float y;
  float radius;
  color Color;
  float xSpeed;
  float ySpeed;

  public Ball(float x, float y, float radius, color Color) {
    this.x=x;
    this.y=y;
    this.radius = radius;
    this.Color = Color;
    xSpeed = random(-3, 3);
    ySpeed = random(-3, 3);
  }

  public void display() {
    fill(Color);
    ellipse(x, y, 2 *radius, 2 *radius);
  }

  public void move() {
    x += xSpeed;
    y += ySpeed;
    if (x + ySpeed < 0 || x+xSpeed > width) {
      xSpeed *= -1;
    }
    if (y+ySpeed <0 || y+ySpeed > height) {
      ySpeed *= -1;
    }
  }
}


private Ball ball;
private Ball nephew;

void setup () {
  Ball ball = new Ball(250, 250, 15, color(0));
  nephew = new Ball(250, 250, 15, color(0));
  size(600, 600);
}

void draw() {
  background(255);
  ball.display();
  ball.move();
  nephew.display();
  nephew.move();
}
