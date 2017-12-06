//MOVE THE MOUSE REALLY  FAST AND PRESS AND RELEASE LMB FOR BEST VISUAL EFFECT

int red=255;
int green=255;
int blue=255;

void setup(){
  
 size(750,750);
  
  surface.setResizable(true);
  
  frameRate(45);
  
}

void draw() {

  // for constraining size of center circles
  float mousex = constrain(mouseX,width/2,height/3);
    float mousey = constrain(mouseY,width/3,height/2);
  
 //for circle one and two movement and size
  float x = mouseX;
  float y = mouseY;
  float ix = width- mouseX;
  float iy = height - mouseY;
  
  //for color of center circles
float r = map (mouseX,0,width,0,175.00);
float g = map (mouseX,0,width,0,100.00);
float b = map (mouseX,0,width,0,50.00);

//center circle sizes
float d = map (mouseX, 0, width, 40.000, 300.000);

//for center circles movement
float clock = mousex;
float dismx = dist(mouseX,0,clock,0);
  
    background(0);
    noStroke();
  
  //circle one
   if(mousePressed == true){
     fill(0,green,0);
   } else {
     fill(red,0,0);
   }
 ellipse(x,height/2,y,y);
 println("cirle one position: (" + x + "," + y + ")");
 

 //circle two
 if(mousePressed == true){
   fill(red,0,0);
 } else {
 fill(0,green,0);
 }
 ellipse(ix,height/2,iy,iy);
 println("cirle two position: (" + y + "," + x + ")" );
  
  //two shaky lines one solid
  stroke(red,green,0);
  line(pmouseX-2,pmouseY-2,height/2,width/2);
  line(mouseX,mouseY,height/2,width/2);
  line(pmouseX+2,pmouseY+2,height/2,width/2);
  
  println("screen size;" + width + "," + height);

   //double suns (clocks)
   
   noStroke();
   
   if(mousePressed == true){
   fill(r,g-100,b-100);
 } else {
 fill(r-100,g,b-100);
 }
ellipse(mousex, height/2,d,d);
ellipse(mousey, height/2,d,d);
  
  println("distance from mouse to center circle" + dismx);
  
}