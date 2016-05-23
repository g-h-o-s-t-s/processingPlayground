int start = -100;
int shift = 98;
int spacingA = 10;
int spacingB = 16;
int index = 0;
int cooldown = 1000;
int lastUpdate=0;
String[] images =
{
  "america.png", "block.png", "brick.png", "bullet.png", 
  "cam.png", "canada.png", "canon_base.png", "canon_shaft.png", "catmat.png", 
  "chrome_block.png", "client_cat.png", "clock.png", "clover.png", "commie.png", 
  "drupal.png", "egypt.png", "firefox.png", "firefox_block.png", "firefox_chinese.png", 
  "firefox_minimal.png", "gear.png", "insta.png", "location.png", "luffy.png", 
  "mili_sword.png", "narnia_sword.png", "star.png", "water.png", "youtube.png"
};


void setup() 
{
  size(1280, 1024);
  noSmooth();
  strokeWeight(5);
  noFill();
  rectMode(CENTER);
}

void draw() 
{
  PImage img = loadImage(images[index]);
  if (millis()-lastUpdate>cooldown) 
  {
    lastUpdate=millis();
    index=int(random(0, images.length));
  }
  background(255);

  for (int x = start; x < width; x += shift) 
  {
    for (int y = start; y < height; y += shift) 
    {
      pushMatrix();
      translate(x + frameCount % shift, y + frameCount % shift);

      for (int i = spacingA; i < -start; i += spacingB) 
      {
        image(img, 0, 0, i, i);
      }

      popMatrix();
    }
  }
}
