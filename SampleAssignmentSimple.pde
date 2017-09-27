float Ytime,Rtime,Gtime;



void setup() {
  size(600, 600);
  Gtime=5000;
  Ytime=8000;
  Rtime=13000;
}

void draw() {
  background(255);
  drawOutlineOfLights();
  light();

}

void drawOutlineOfLights() {
  //box
  rectMode(CENTER);
  fill(0);
  rect(width/2, height/2, 75, 200, 10);
}
  
void light(){
if (millis() < Gtime){
  fill  (204,50,50);
  ellipse(width/2, height/2 - 65, 50, 50); //top
  fill(255);
  ellipse(width/2, height/2 + 65, 50, 50); //bottom
  ellipse(width/2, height/2, 50, 50); //middle  
}
else if (millis() < Ytime){
   fill  (231,180,22);
  ellipse(width/2, height/2, 50, 50); //middle
  fill(255);
  ellipse(width/2, height/2 - 65, 50, 50); //top
  ellipse(width/2, height/2 + 65, 50, 50); //bottom
}
else if (millis() < Rtime){
  fill(45,201,55);
  ellipse(width/2, height/2 + 65, 50, 50); //bottom
  fill(255);
  ellipse(width/2, height/2 - 65, 50, 50); //top
  ellipse(width/2, height/2, 50, 50); //middle
  
}
else if (millis() < Rtime+7000){
  Gtime=Gtime+20000;
  Ytime=Ytime+20000;
  Rtime=Rtime+20000;
}
}
