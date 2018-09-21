int canvasY = 300;
int canvasX = 300;
int startX = canvasX / 2;
int startY = 0;
int endX = canvasX / 2;
int endY = 0;
boolean painting = true;
int r = (int)(Math.random()*255);
int g = (int)(Math.random()*255);
int b = (int)(Math.random()*255);
void setup()
{
  size(300, 300);
  strokeWeight(3);
  background(0);
  stroke(r, g, b);
}
void draw()
{
  if(endY< 300){
    painting = true;
    endX = startX +(int)(Math.random()*19)-9;
    endY = startY + (int)(Math.random()*9);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    endX = startX +(int)(Math.random()*19)-9;
    endY = startY + (int)(Math.random()*9);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    
  }else{
    painting = false;
    fill(0,0,0,10);
    stroke(0,0,0,10);
    rect(0,0,canvasX,canvasY);
    r = (int)(Math.random()*255);
    g = (int)(Math.random()*255);
    b = (int)(Math.random()*255);
    stroke(r, g, b);
  }
}
  void mousePressed()
  {
    if(painting == false){
      background(0);
      startX = canvasX / 2;
      startY = 0;
      endX = canvasX / 2;
      endY = 0;
      redraw();
    }
  }
