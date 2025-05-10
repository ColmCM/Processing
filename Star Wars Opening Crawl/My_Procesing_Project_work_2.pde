import ddf.minim.*;
Minim minim;
AudioSample d1;
PImage stars,logo;
int logo_x,logo_y,logo_count, num1;
String crawl;

void setup()
{
  minim = new Minim(this);
  d1 = minim.loadSample("StarWarsTheme.mp3"); //Gets the music
  stars = loadImage("Stars1.jpg"); //The stars in the background
  logo = loadImage("StarWars.png");
  textureMode(NORMAL);
  blendMode(BLEND);
  noStroke();
  logo_x=450;
  logo_y=450;
  
  size(1600,900, P3D); // P3D makes it 3D, Had to make the size 1600,900 in order to match the background size
   crawl = "\n\n         Episode IV\n        A NEW HOPE\n\nIt is a period of civil war. Rebel spaceships, striking from a hidden base, have won their first victory against the evil Galactic Empire.\n\nDuring the battle, Rebel spies managed to steal secret plans to the Empire's ultimate weapon, the DEATH STAR, an armored space station with enough power to destroy an entire planet.\n\nPursued by the Empire's sinister agents, Princess Leia races home aboard her starship, custodian of the stolen plans that can save her people and restore freedom to the galaxy...";
   d1.trigger();
}
void draw()
  {
  background(stars);
  fill(255,255,0);
  translate(width/2-450, height);
  rotateX(PI/3.0); //Rotates text to be 3D
  textSize(80); //Size of crawl
  text(crawl, 0, num1, 1110, 3600); //This prints the crawl
  num1 -= 1; //num1 makes it move backwards
  pushMatrix();
  translate(logo_x,logo_y);
  rotateX(PI/-3.0);
  beginShape();
  texture(logo); //This is all the STAR WARS stuff
  vertex(-1600,-1600,0,0);
  vertex(1600,-1600,1,0);
  vertex(1600,1600,1,1);
  vertex(-1600,1600,0,1);
  endShape(CLOSE);
  popMatrix();
  logo_y+=-25;
  }
