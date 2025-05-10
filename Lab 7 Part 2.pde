//Lab 7 CS171

// Drag and drop Jama.Jar onto IDE/PDE 

float OriginX = 200, OriginY = 200; 

float angle=0;
/// STEP 1: ADD A SECOND ANGLE VARIABLE HERE CALLED angle1
float angle1=0;

void setup() {
  // Create a window 200x200
  size(400, 400);
}

void draw() {
  background(255);

  // Draw button
  // Fill colour RGB
  fill(0, 0, 0);
  // Rectangle
  rect(10, 10, 50, 20);
  // Add text "Rotate"
  textSize(12);
  fill(255, 255, 255);
  text("Rotate", 16, 24); 

  if (mousePressed)
  {
    if (mouseX>10 && mouseX <60 && mouseY>10 && mouseY <30)
    {
      angle+=3.0*(PI/180); 
      angle1+=2.0*(3.0*(PI/180));
    }
  }

  // Create points on a 40x40 square centered on 0,0 (X's row 1, Y's row 2)
  double[][] Pvals = {{-20, 20, 20, -20}, 
                      {-20, -20, 20, 20}};
  Matrix P = new Matrix(Pvals);
  
  // Draw the original square
  draw_quad(P);

  //// Create rotation matrix through 45 degrees
  double[][] Rvals = {{cos(angle), -sin(angle)}, {sin(angle), cos(angle)}};
  Matrix R = new Matrix(Rvals);

  // Apply rotation matrix to the points
  Matrix P1=R.times(P);
  
  double[][] R2vals = {{cos(angle1), -sin(angle1)}, {sin(angle1), cos(angle1)}};
  Matrix R1 = new Matrix(R2vals);

  Matrix P2=R1.times(P1);
  
  //// Create a 2D translation matrix to move 50,100
  double tx = 50, ty = 100;
  double[][] Tvals = {{tx, tx, tx, tx}, {ty, ty, ty, ty}};
  Matrix T = new Matrix(Tvals);

  // Apply translation to the points
  P1=P1.plus(T);
  
  double tx2 = 50, ty2 = -100;
  double[] [] T2vals = {{tx2, tx2, tx2, tx2}, {ty2,ty2,ty2,ty2}};
  Matrix T2 = new Matrix(T2vals);
  P2=P2.plus(T2);

  // Print points (column width, number of digits) to console
  P1.print(5, 2);

  // Draw Second Square
  draw_quad(P1);
  draw_quad(P2);
}

void draw_quad(Matrix P){
  // Extract point infromation from matrix 
  float X1=(float)P.get(0, 0)+OriginX;
  float Y1=(float)P.get(1, 0)+OriginY;
  float X2=(float)P.get(0, 1)+OriginX;
  float Y2=(float)P.get(1, 1)+OriginY; 
  float X3=(float)P.get(0, 2)+OriginX;
  float Y3=(float)P.get(1, 2)+OriginY;
  float X4=(float)P.get(0, 3)+OriginX;
  float Y4=(float)P.get(1, 3)+OriginY; 

  // Draw rectangle
  line(X1, Y1, X2, Y2);
  line(X2, Y2, X3, Y3);
  line(X3, Y3, X4, Y4);
  line(X1, Y1, X4, Y4); 
}
