Firework[] firework = new Firework[25];

void setup() {
  size(800, 800);
  ellipseMode(RADIUS);
  for (int i=0; i < firework.length; i++) {
    firework[i] = new Firework(width, height);
  }
}

void draw() {
  background(255);
  for (int i=0; i < firework.length; i++) {
    firework[i].display();
    firework[i].step();
  }
}
void mouseClicked() {
  for (int i=0; i < firework.length; i++) {
    firework[i] = new Firework(width, height);
  }
}
