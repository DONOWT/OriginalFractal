public int myX = 250;
public int myY = 250;
void setup(){
  size(500,500);
  noStroke();
}
void draw() {
  myX = abs(250 - mouseX)*2;
  myY = abs(250 - mouseY)*2;
  fill((int)Math.sqrt(myX*100),(int)Math.sqrt(myY*100),(int)Math.sqrt(myX+myY/50));
  spheric(250-abs(myX/2),250-abs(myY/2),abs(myX/2),abs(myY/2));
  spheric(250-abs(myX/2),250+abs(myY/2),abs(myX/2),abs(myY/2));
  spheric(250+abs(myX/2),250-abs(myY/2),abs(myX/2),abs(myY/2));
  spheric(250+abs(myX/2),250+abs(myY/2),abs(myX/2),abs(myY/2));
}
void spheric(int x, int y, int sizex, int sizey) {
  if (sizex < 5 || sizey < 5) {
    ellipse(x,y,sizex,sizey);
  } else {
    spheric(sizex+x,sizey+y,sizex/2,sizey/2);
    spheric(x-sizex,sizey+y,sizex/2,sizey/2);
    spheric(sizex+x,y-sizey,sizex/2,sizey/2);
    spheric(x-sizex,y-sizey,sizex/2,sizey/2);
    ellipse(x,y,sizex,sizey);
  }
}
