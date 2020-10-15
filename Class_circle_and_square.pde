//Declare the variables
Circle circle;
boolean change=true;
boolean threshhold=false;
float randomNumber=0;

//Initialize the object circle from the Circle Class
void setup() {
  size(300, 300);
  circle = new Circle(random(width), random(height), random(-3, 3), random(-3, 3),40,#AF2C2C);
}

void draw() {
  background(200);
  
//If the mouse is pressed, a random number between 0 and 10 will be selected and the threshhold is set to true.
  if(mousePressed){
    randomNumber=random(0,20);
    threshhold=true;
  }
//If the selected number is less than five while the threshhold is true, the change state will also be set to true.
  if(randomNumber<10 && threshhold==true){
    change=true;
  }
//However if the number is more than 5, the change state is set to false.
  else if(randomNumber>10 && threshhold==true){
    change=false;
  }
//If both change and threshhold are true, a new object will replace the previous, and is called by the other constructor. 
//The only difference is the variable used on the 5th position, which is a float in the first one and an integer in the other.
//This way, Processing knows which constrcutor to use when making the new object. 
//At the same time, the threshhold is set to false, so that it only becomes true when the mouse is pressed again.
  if (change && threshhold){
   circle = new Circle(random(width), random(height), random(-3, 3), random(-3, 3),40.,#AF2C2C); 
   threshhold=false;
  }
//If the change is false, but the threshhold is true, an object from the same constructor will be called, so the appearance doesn't change.
  if (!change && threshhold){
   circle = new Circle(random(width), random(height), random(-3, 3), random(-3, 3),40,#AF2C2C); 
   threshhold=false;
  } 
  
//Display and move the circle/square
  circle.move();
  circle.display();
 }
 
 
 
