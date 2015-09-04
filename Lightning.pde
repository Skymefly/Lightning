int startX=0;
int startY=200;
int endX=0;
int endY=200;
int startX2=400;
int startY2=200;
int endX2=400;
int endY2=200;
int r;
int g;
int b;
int ba=255;
void setup()
{
  strokeWeight(2);
  background(ba);
  size(400,400);
}
void draw()
{
	if (endX<400) {
		int r = (int)(Math.random()*256);
		int b = (int)(Math.random()*256);
		int g = (int)(Math.random()*256);
		int rX = (int)(Math.random()*7);
		int rY = (int)(Math.random()*15)-7;
		stroke(r,g,b);
		endX=startX+rX;
		endY=startY+rY;
		line(startX,startY,endX,endY);
		startX=endX;
		startY=endY;
		endX2=startX2-rX;
		endY2=startY2-rY;
		line(startX2,startY2,endX2,endY2);
		startX2=endX2;
		startY2=endY2;
	}
	
}
void mousePressed()
{
	startX=0;
	startY=200;
	endX=0;
	endY=200;
	startX2=400;
	startY2=200;
	endX2=400;
	endY2=200;
	ba=0;
}
