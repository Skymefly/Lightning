int startX=0;
int startY=200;
int endX=0;
int endY=200;
int r;
int g;
int b;
int ba=255;
void setup()
{
  strokeWeight(2);
  background(ba,ba,ba);
  size(400,400);
}
void draw()
{
	while (endX<400) {
		int r = (int)(Math.random()*256);
		int b = (int)(Math.random()*256);
		int g = (int)(Math.random()*256);
		int rX = (int)(Math.random()*9);
		int rY = (int)(Math.random()*18)-9;
		stroke(r,g,b);
		endX=startX+rX;
		endY=startY+rY;
		line(startX,startY,endX,endY);
		startX=endX;
		startY=endY;
	}
	
}
void mousePressed()
{
	startX=0;
	startY=200;
	endX=0;
	endY=200;
}
void mouseDragged()
{
	if (ba==255){
		ba=ba-255;
	}
	if (ba==0) {
		ba=ba+255;
	}
}
