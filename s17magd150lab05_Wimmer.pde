//A TUBE TV SET. CLICK THE ON AND OFF BUTTONS TO TOGGLE THE TELEVISION ON AND OFF

//sets up button parameters to be used in drawing buttons
//and used to set guides for interaction
int onX = 465;
int onY = 200;
int offX = 440;
int offY = 300;
int onSize = 50;    
int offSize = 50;
//creates the booleans for the button functionality
boolean on, off;

color onColor, offColor;
void setup(){
  
  size(500,500);
  
  background(102, 64, 40);
  
  noStroke();
//setting default booleans for button functionality
   on = false;
 off = true;
 //button colors
 onColor=(122);
 offColor=(122);
}


void draw(){
  fill(0);
  
  //draws main elements
  screen();
offButton();
onButton();

//on button turns on, off button turns off
 if(mousePressed){
  if(mouseX>offX && mouseX <offX+offSize && mouseY>offY && mouseY <offY+offSize){
on=false;
   off=true;
  }else if(mouseX>onX-25 && mouseX <onX+25 && mouseY>onY-25 && mouseY <onY+25){
 off=false;
    on=true;}
}
//cursor type changes on buttons
 if (mouseX > offX  && mouseX < offX + 50  && mouseY > offY  && mouseY < offY + 50 
    || mouseX > onX-25   && mouseX < onX + 25 && mouseY > onY-25   && mouseY < onY + 25 ){

    cursor(HAND);
    } else { 
      cursor(CROSS);
    }
    
}

void screen(){
//screen element
 
  rect(75,75,350,350);
//if boolean off is true screen is black
     if (off) {
    fill(0);
 //if boolean on is true screen does rgb bars
  }else if (on){
    fill(255,0,0);
    rect(75,75,150,350);
    fill(0,255,0);
    rect(190,75,125,350);
    fill(0,0,255);
    rect(315,75,110,350);
  }
 
}

// off button elements and text
void offButton(){
fill(offColor);
  rect(offX,offY,offSize,offSize);
  fill(0);
text("OFF", offX+14,offY+28);
 
}

// on button elements and text
void onButton(){
  fill(onColor);
  ellipse(onX,onY,onSize,onSize);
fill(0);
textSize(15);
text("ON", onX-11,onY+5);

    
}