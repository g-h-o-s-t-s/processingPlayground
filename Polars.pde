float x, y, r, theta;

void setup()
{
  size(1600, 900);
  r=1;
}

void draw()
{
  frameRate(500);
  //  background(150);
  translate(width/2, height/2);
  //  translate(mouseX, mouseY);

  //  stroke(0);

  //  colorMode(HSB);
  fill(tan(radians(theta))*255);
  x=r*1/tan(radians(theta));
  y=r*1/tan(radians(theta));
//  x=r*cos(radians(theta));
//  y=r*sin(radians(theta));

  stroke(1/tan(radians(theta))*127+127, 127);
  strokeWeight(30);
  point(x, y);
    point(random(-width,width), random(-height,height));

  stroke(1/tan(radians(theta))*127+127, 127);
  strokeWeight(3);
  line(x, y, 0, 0);
  line(random(-width,width), random(-height,height),random(-width,width), random(-height,height));

  strokeWeight(5);
  stroke(1/tan(radians(theta))*127+127, 127);
  ellipse(0, 0, x, y);

  theta++;
  r=sin(millis()/1000.0)*360+360;
}

//void mousePressed() {
//  loop();  // Holding down the mouse activates looping
//}
//
//void mouseReleased() {
//  noLoop();  // Releasing the mouse stops looping draw()
//}

