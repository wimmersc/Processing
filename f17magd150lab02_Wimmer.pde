void setup (){
  
  size(500,500);
  
  background(0,0,0);
  
}

void draw (){

beginShape();

strokeWeight(10);

fill(255,0,0);

vertex(0,0);

vertex(500,0);

vertex(0,500);

vertex(500,500);

endShape(CLOSE);

beginShape();

fill(#FFA84A);

arc(250,250,100,100,0,PI+QUARTER_PI,OPEN);
  
  endShape(CLOSE);
  
     beginShape();

fill(20,133,204);

ellipse(250,250,75,75);

}