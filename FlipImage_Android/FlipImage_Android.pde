
PImage hand;
int s, w, h, prevWidth;
float x, y, xSpeed, ar;
boolean start = false;
void setup(){
  fullScreen();
  hand = loadImage("alienhand02.png");
  ar = hand.width/hand.height;
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  s = 1;
}

void draw(){
  background(0);
  init();
  if(start){
  scale(s,1);
  image(hand, x * s, y);
  x += xSpeed;
  if(x > width + hand.width/2 || x < -hand.width/2 ){
    s *= -1;  
    xSpeed *= -1;
  }
  }else{
    text("Tap to start or return here.",width/2, height/2);
  }
}

void mousePressed(){
  start = !start;
}
