int diameter = 35;
float t = 0.0;
float dt = 0.12;
float amplitude = 100.0;
float frequency = 0.3;
String[] name = {
  "S", "A", "G", "N", "I", "K"
};

void setup()
{
  size(1500, 600);
  textSize(25);
}

void draw()
{
  background(mouseY/10, mouseX/25, 100);
  fill(255);

  for (int i =0; i<36; i++) 
  {
    text(name[(i/6)], width/10+i*35, amplitude*sin(frequency*(t+i))+height/2, diameter, diameter);
  }
  t+=dt;
}

