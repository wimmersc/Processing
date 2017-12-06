//A STORMY RAINY NIGHT, CLICK MOUSE TO PLAY THOR

//creates classes to be used in drawing
stormCloud showstormCloud;
rain showrain;

void setup(){
  //sets up words for classes and sketch background
  background(0);
  size (250,250);
  showstormCloud = new stormCloud();
  showrain = new rain();
  
}

void draw(){
  //draws classes into draw
  background(0);
  showstormCloud.move();
  showstormCloud.show();

 showrain.move();
  showrain.show();
  

}


// creates a lightning bolt
void lightning(){
float lightPos;

  lightPos = random(0,width);
  fill(244, 241, 66);
rect(lightPos,0,10,height);
fill(0);
rect(lightPos+5,25,5,10);
rect(lightPos,50,5,15);
rect(lightPos+5,75,5,20);
rect(lightPos,100,5,15);
rect(lightPos+5,125,5,25);
rect(lightPos,155,5,10);
rect(lightPos+5,180,5,15);
rect(lightPos,215,5,20);
rect(lightPos+5,245,5,5);

}

//shows a lightning bolt when mouse is pressed
void mousePressed(){
  
  lightning();
}