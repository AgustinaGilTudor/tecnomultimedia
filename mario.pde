void setup() {
  size(1000, 1000);
  noStroke();
}

void draw() {

  for (int x=0; x<width; x+=20) {
    for (int y=0; y<height; y+=20) {
      fill(255);
      rect(x, y, 20, 20);
    }
  }
  mario(255, 0, 0, 200, 200);
  mario(0, 255, 0, 600, 600);
}
