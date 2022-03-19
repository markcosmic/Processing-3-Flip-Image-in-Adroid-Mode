void init(){
  if(width != prevWidth){
    prevWidth = width;
    if(width > height){
      h = height/4;
    }else{
      h = width/4;      
    }
      xSpeed = width/160;
      w = int(h * ar);
      hand.resize(w, h);
      x = width/2;
      y = height/2;
      textSize(width/20);
      s = 1;
  }
}
