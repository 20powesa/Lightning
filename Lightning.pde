int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int red;
int blue;
int green;
int endYNumber = -5;
int weight = 5;

void setup(){
  //This creates the size of the window the lightning bolt is viewed on.
  size(300, 300);
  
  //This assigns numbers to the color variables to be used the first time.
  red = 0;
  blue = 0;
  green = 0;
  background(0);
}

void draw(){
  //This defines the lightning bolt color and its strokeWeight() as well as the background.
  stroke(red, green, blue);
  strokeWeight(weight);
  
  //This creates the lightning bolt.
  while (endX < 300){
    endX = startX + (int)(Math.random() * 10);
    endY = startY + (int)(Math.random() * 10) + (endYNumber);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed(){
  //This changes the stroke to another random color.
  red = (int) (Math.random() * 100) + 155;
  blue = (int) (Math.random() * 100) + 155;
  green = (int) (Math.random() * 100) + 155;
  
  //This resets the coordinates for the lightning.
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}
void keyPressed(){
  //Every time the Up Arrow is pressed, the Lightning bolt is moved up.
  if (keyCode == UP){
    endYNumber --;
  }
  //Every time the Down Arrow is pressed, the Lightning bolt is moved down.
  if (keyCode == DOWN){
    endYNumber ++;
  }
  //Every time the Left Arrow is pressed, the lightning bolt's strokeWeight() is reduced.
  if(keyCode == LEFT){
    if (weight > 1 ){
      weight -= 1;
    }
    //This prevents the strokeWeight() from being too low.
    if (weight == 1){
    }
  }
  //Every time the Right Arrow is pressed, the lightning bolt's strokeWeight() is increased.
  if(keyCode == RIGHT){
    if (weight < 65){
      weight += 1;
    }
    //This prevents the strokeWeight() from being too high.
    if (weight > 65){
    }
  }
  //This overlays a background to erase the lightning bolts.
  if(keyCode == ENTER){
    background(0);
  }
}
