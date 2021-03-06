color color1 = color(255, 150, 0);
color color2 = color(33, 66, 99);

void setup() {
  size(350, 350);
  background(255);
  strokeWeight(5);
}

void mousePressed() {

  color1 = color(random(0, 255), random(0, 255), random(0, 255));
  color2 = color(random(0, 255), random(0, 255), random(0, 255));
}

void draw() {

  fill(0, 15);
  translate(width/2, height/2);
  rotate(frameCount/10.0f);
  for (float i = 0; i < 4 * TWO_PI; i += 0.03) {
    float x = i * 7 * cos(i);
    float y = i * 7 * sin(i);
    stroke(color1);
    point(x, y);
    stroke(color2);
    point(-x, -y);
  }
}

