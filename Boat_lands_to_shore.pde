void setup()
{
  size(2000,1000); // size of the window
}
void draw()
{
  background(0, 255, 255); // Cyan
  fill(128, 128, 128); // Gray Colour
  triangle(frameCount+60,700,frameCount+350,700,frameCount+200,1000); // Boat
fill(255, 255, 0); // Yellow
ellipse(1800,100,100,100); // Sun
fill (255,255,255); // White
ellipse(100,100, 600, 100); // cloud
ellipse(1000, 100, 600, 100); // cloud 2
ellipse(400,400,400,100); // cloud 3
fill(0, 0, 255); // Blue // 
rect(0, 800, 2000, 800); // Sea
fill(255,255,0); // Sand colour
rect(1800,800,800,200); // Sand 
}
