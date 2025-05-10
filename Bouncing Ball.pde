float g=-9.81;
float k=0.2; // Spring constant
float m=0.25; //Mass kg
float dt=0.01; //Time step 50ms

float vy=0; //Initial velocity
float y=0.95;  //Initial position

float t=0; //Initial time

void setup()
{
  size(500,500);
}
void draw()
{
  vy=vy+(g-(k/m)*vy)*dt;
  y=y+(vy*dt);
  
  t=t+dt;
  
  float sx=map(0.5,0,1,0,width);
  float sy=map(y,0,1,height-1,0);
  fill(255,0,0);
  ellipse(sx,sy,10,10);
}
