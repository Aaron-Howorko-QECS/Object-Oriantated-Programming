Ball[] ball = new Ball[2];
Paddle1 paddle1 = new Paddle1(50, 225, 20, 125);
Paddle2 paddle2 = new Paddle2(525, 225, 20, 125);


void setup() {
  size(600, 600);
  ellipseMode(RADIUS);
  CreateBalls();
}

void draw() {
  
  display();
  update();
}

void display() {
  
  background(0);
  rect(paddle1.getX(), paddle1.getY(), paddle1.getWidth(),paddle1.getHeight());
  rect(paddle2.getX(), paddle2.getY(), paddle2.getWidth(),paddle2.getHeight());
  for (int i=0; i < ball.length; i++) {
    ellipse(ball[i].getX(), ball[i].getY(), ball[i].getRadius(), ball[i].getRadius());
  }
}

void update() {
  
  for (int i=0; i < ball.length; i++) {
    ball[i].move();
  }
}
