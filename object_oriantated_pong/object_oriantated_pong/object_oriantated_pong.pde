Ball[] ball = new Ball[2];
leftPaddle[] left = new leftPaddle[leftPaddle.getPaddleCount()];
rightPaddle[] right = new rightPaddle[rightPaddle.getPaddleCount()];


void setup() {
  size(600, 600);
  ellipseMode(RADIUS);
  CreateBalls();
  createPaddle();
}

void draw() {

  display();
  update();
}

void display() {

  background(255);
  for (int i=0; i < ball.length; i++) {
    fill(0);
    ellipse(ball[i].getX(), ball[i].getY(), ball[i].getRadius(), ball[i].getRadius());
  }
  for (int i=0; i < left.length; i++) {
    fill(0);
    left[i].paddleMove();
    right[i].paddleMove();
    rect(left[i].getX(), left[i].getY(), left[i].getWidth(), left[i].getHeight());
    rect(right[i].getX(), right[i].getY(), right[i].getWidth(), right[i].getHeight());
  }
}
void update() {
  for (int i=0; i < ball.length; i++) {
    ball[i].move();

  }
}
void Collide() {
}

void keyPressed() {
  if (key == 'w' || key == 'W') {
    Ball.keys[0] = true;
  }
  if (key == 's'|| key == 'S') {
    Ball.keys[1] = true;
  }
  if (keyCode == UP) {
    Ball.keys[2] = true;
  }
  if (keyCode == DOWN) {
    Ball.keys[3] = true;
  }
}
void keyReleased() {
  if (key == 'w' || key == 'W') {
    Ball.keys[0] = false;
  }
  if (key == 's'|| key == 'S') {
    Ball.keys[1] = false;
  }
  if (keyCode == UP) {
    Ball.keys[2] = false;
  }
  if (keyCode == DOWN) {
    Ball.keys[3] = false;
  }
}
