void CreateBalls() {
  for (int i = 0; i < ball.length; i++) {
    ball[i] = new Ball(300.0, 300.0, 10, random(-5, 5), random(-5, 5));
  }
} 
