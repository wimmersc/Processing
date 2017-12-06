//a fishy pizza slice swimming in a tank with seaweed
//press key to change pizza slice color
//press mouse rapidly to make bubbles
 
 //fish floats
  float xpos, ypos;
  float xspeed = 2;
  float yspeed = 3;
  int xdirection = 1;
  int ydirection = 1;

void setup(){
 
  size(500,500);
 frameRate(30);
xpos = 250;
ypos = 250;
}

void draw(){
 background(63,184,191);
  xpos = xpos + (xspeed * xdirection);
  ypos = ypos + (yspeed * ydirection);
  
  if (xpos > width-10 || xpos < 10) {
    xdirection *= -1;
  }
  if (ypos > height-10 || ypos < 10) {
    ydirection *= -1;
  }

stroke(0);
strokeWeight(0);
if (keyPressed == true) {
fill(244, 143, 66);
} else {
  fill(244, 65, 65);
}
triangle(xpos,ypos,xpos+15,ypos-15,xpos-10,ypos-10);


//seaweed
stroke(0,255,0);
strokeWeight(3);
for (int sw = 0; sw <100; sw = sw + 4) {
  line(10, 500, 30,sw);
}
  
  for (int sw = 0; sw <100; sw = sw + 4) {
  line(250, 500, 350,sw);
}

 for (int sw = 0; sw <100; sw = sw + 4) {
  line(300, 500, 150,sw);
}

for (int sw = 0; sw <100; sw = sw + 4) {
  line(450, 500, 500,sw);
}

}
void mousePressed(){
    //bubble floats
float bubbleX = random (0,500);
float bubbleY = random (0,500);
float bubbleSize = random(10,25);
float bubble1X = random (0,500);
float bubble1Y = random (0,500);
float bubble1Size = random(10,25);
float bubble2X = random (0,500);
float bubble2Y = random (0,500);
float bubble2Size = random(10,25);

//bubble press
   strokeWeight(0);
   stroke(255);
   fill(255);
 
if (mousePressed == true) {
  ellipse(bubbleX,bubbleY,bubbleSize,bubbleSize);
  loop();
 } else {
  background(63,184,191);
     noLoop();
    }
    if (mousePressed == true) {
  ellipse(bubble1X,bubble1Y,bubble1Size,bubble1Size);
  loop();
 } else {
  background(63,184,191);
     noLoop();
    }
        if (mousePressed == true) {
  ellipse(bubble2X,bubble2Y,bubble2Size,bubble2Size);
  loop();
 } else {
  background(63,184,191);
     noLoop();
    }

 
}