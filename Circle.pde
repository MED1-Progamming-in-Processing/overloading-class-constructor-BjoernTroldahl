class Circle {
  float x;
  float y;
  float xSpeed=20;
  float ySpeed=20;
  int radius;
  float side;
  color circleColor;
  boolean square=false;

//Two different constructors but with the same class. The boolean square is used to determine if the shape changes to a square or not.
  Circle(float x, float y, float xSpeed, float ySpeed, float side, color circleColor) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.side = side;
    this.circleColor = circleColor;
    square=true;
  }
   Circle(float x, float y, float xSpeed, float ySpeed, int radius, color circleColor) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.radius = radius;
    this.circleColor = circleColor;
    square=false;
  }

  void move() {
    x += xSpeed;
    if (x < 0 || x > width) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y < 0 || y > height) {
      ySpeed *= -1;
    }
  }
//If the square is false, the object will appear as an ellipse, and if it's true it will appear as a square. 
  void display(){
   if(!square){
   fill(circleColor);
   ellipse(x,y,radius,radius);
  }
  if(square){
  rectMode(CENTER);
  rect(x,y,side,side);
}
}
}
