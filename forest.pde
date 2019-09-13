//Forest Code

//In Static Mode, you can just write code down here>

// float x and y are the moving position 
// speed is how fast the object/ objects are moving.

float x = 0;
float y = 100;
float speed = 0.8;





//In Active Mode, you need at least this>
void setup() {


  background(#A1F5EE);  
  size(512, 512);
}

void draw() {

  //If you use an image, Do Not put an image load in here, it will make a mess
  background(#A1F5EE);

  //move and display are being declared for void move and void display.

  move(); 
  display();
}
// setting up the speed on x axis.
void move() {
  x = x + speed;
  if (x > width) {
    x = -1224;
  }
}
// setting up animation display.
void display() {

  //tree trunk
  fill(#A58A61);

  stroke(0);
  // for = repeats of the same shape: 
  //(int i = position; i < shape repeat; i = i+spaces between) 
  for (int i = 0; i < 1024; i = i+80) { 
    //we use x and y  from the floats above in the x position...
    //x+y+i,y,x,y (float x+float y+ integer,y, size: x,y) 
    rect(x+y+i, 268, 23, 108);
  }

  //tree leaves
  fill(#50D65E);

  stroke(0);
  // for = repeats of the same shape: 
  //(int i = position; i < shape repeat; i = i+spaces between) 

  for (int i = 8; i < 1024; i = i+80) { 

    ellipse(x+y+i, 257, 100, 100);
  }

  //road
  noStroke();
  fill(#272625);
  rect(0, 360, 512, 312);

  //road lines
  fill(#D1C32C);

  // for = repeats of the same shape: 
  //(int i = position; i < shape repeat; i = i+spaces between) 
  for (int i = -1224; i < 2048; i = i+80) { 
    //we use x and y  from the floats above in the x position...
    //x+y+i,y,x,y (float x+float y+ integer,y, size: x,y) 
    rect(x+y+i, 408, 40, 5);
  }
}
