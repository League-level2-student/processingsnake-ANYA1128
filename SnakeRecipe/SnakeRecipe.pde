
// 1. Follow the recipe instructions inside the Segment class.

// The Segment class will be used to represent each part of the moving snake.

class Segment {

  //2. Create x and y member variables to hold the location of each segment.
  int x;
  int y;
  // 3. Add a constructor with parameters to initialize each variable.
  public Segment(int x, int y) {
    this.x= x;
    this.y = y;
  }
  // 4. Add getter and setter methods for both the x and y member variables.
  public int getterX () {
    return x;
  }
  public int getterY () {
    return y;
  }
  public void setterX (int x) {
    this.x=x;
  }
  public void setterY (int y) {
    this.x=x;
  }

  // 5. Create (but do not initialize) a Segment variable to hold the head of the Snake
  int segment;


  // 6. Create and initialize a String to hold the direction of your snake e.g. "up"
  String direction = "up";


  // 7. Create and initialize a variable to hold how many pieces of food the snake has eaten.
  // give it a value of 1 to start.
  int piecesOfFoodEaten = 1;


  // 8. Create and initialize foodX and foodY variables to hold the location of the food.

  int foodX = ((int)random(50)*10);
  int foodY = ((int)random(50)*10);


    Segment head;
  void setup() {

    // 9. Set the size of your sketch (500 by 500).

    size(500, 500);


    // 10. initialize your head to a new segment.

head = new Segment(100,100);
    // 11. Use the frameRate(int rate) method to set the rate to 20.
    frameRate(20);
  }


  void draw() {

    background(0);


    //12. Call the manageTail, drawFood, drawSnake, move, and collision methods.
    manageTail();
    drawFood();
    drawSnake();
    move();
    collision();
  }


  // 13. Complete the drawFood method below. (Hint: each piece of food should be a 10 by 10 rectangle).

  void drawFood() {
    fill(#FA1D12);
    rect(foodX, foodY, width, height);
  }


  //14. Draw the snake head (use a 10 by 10 rectangle)

  void drawSnake() {
    fill(#65FF00);
    rect(head.getterX(), head.getterY(), 10, 10);
    //test your code
  }


  // 15. Complete the move method below.

  void move() {

    // 16. Using a switch statement, make your snake head move by 10 pixels in the correct direction.
    //This is an incomplete switch statement:
    
  switch(dir) {
     case "up":
     head.setterY(y-=10);
     break;
     case "down":
     head.setterY(y+=10);
     break;
     case "left":
     head.setterX(y-=10); 
     break;
     case "right":
     head.setterX(y+=10); 
     break;
     }
     


    // 17. Call the checkBoundaries method to make sure the snake head doesn't go off the screen.
  checkBoundaries();
}


  // 18. Complete the keyPressed method below. Use if statements to set your direction variable depending on what key is pressed.

  void keyPressed() {
    if(keyPressed==down){
      direction="down";
    }
     if(keyPressed==up){
      direction="up";
    }
     if(keyPressed==left){
      direction="left";
    }
     if(keyPressed==right){
      direction="right";
    }
    



  // 19. check if your head is out of bounds (teleport your snake head to the other side).

   void checkBoundaries() {
    if(x>=500){
      x=0;
  }
  if(y>=500){
      y=0;
  }
   }





  //20. Make sure that the key for your current direction’s opposite doesn’t work(i.e. If you’re going up, down key shouldn’t work)



  // 21. Complete the missing parts of the collision method below.

  void collision() {

    // If the segment is colliding with a piece of food...
    // Increase the amount of food eaten and set foodX and foodY to new random locations.
  }



  /**
   
   ** Part 2: making the tail (the rest of the snake)
   
   **/

  //  1. Create and initialize an ArrayList of Segments. (This will be your snake tail!)


  // 2. Complete the missing parts of the manageTail method below and call it in the draw method.

  void manageTail() {

    //Call the drawTail and checkTailCollision methods.

    // Add a new Segment to your ArrayList that has the same X and Y as the head of your snake.

    // To keep your tail the right length:
    // while the tail size is greater than the number of food pieces eaten, remove the first Segment in your tail.
  }

  void drawTail() {
    // Draw a 10 by 10 rectangle for each Segment in your snake ArrayList.
  }


  // 3. Complete the missing parts of the bodyCollision method below.

  void checkTailCollision() {

    // If your head has the same location as one of your segments...

    // reset your food variable

    //Call this method at the beginning of your manageTail method.
  }
}
