//draws rainfall
class rain{
//setup basics of rain
  rain(){
  noStroke();
  }
 void show(){
 
  // shows dropletts
  fill(0,0,200);
  
       float a = random(0, width); 
  float b = random(0, height); 
  float c = random(0, 5); 
  float d = random(0, 10); 
  
    ellipse (a,b,c,d);
  
 }
 //moves dropletts a bit to give idea of motion
  void move(){
  float dropPos = random(0,width);
  dropPos = dropPos + 15;

  
}

}