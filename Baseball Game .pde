int x=150; 
int direction_x=2; 
int y=250; 
int direction_y=2; 

int lives=3; 
int score=0; 

void setup()
{
  size(400,400); 
}
void draw()
{
  background(255,255,255); //  white
  fill(0,255,0); //  Green
  rect(0, mouseY-60,20,120); // Position rectangle with mouse original is rect(mouseX-60,380,120,20)
  
  fill(255,0,0); // Red 
  ellipse(x,y,20,20); // ball
  
  x=x+direction_x; // New position = old position + change in direction 
  if(x<10)         direction_x=-direction_x; // Reverse direcion if hit boundary 
  if(x>(width-10)) direction_x=-direction_x; 
  if(x<10)
  lives--;
  if(lives==0) exit();
 
  y=y+direction_y; 
  if(y<10) direction_y=-direction_y; 
  if(y>(height-10)) 
  {
    direction_y=-direction_y; // Bounce
   //  lives--; // Reduce lives by one
    // if(lives==0) exit(); // If lives is zero then quit
  }
   if((x<(width-370))&&(abs(mouseY-y)<60)) // paddle collision
  {
    direction_x=-direction_x; // Bounce on the paddle
    score++; // Increase score by one. 
 
  }
  textSize(32);
  fill(0,0,255);
  text(score, 10, 30); // Shows score
  text(lives,width-30, 30); // Shows lives.
}

