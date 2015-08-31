int startX=0;
int startY=150;
int endX=0;
int endY=150;
int r;
int g;
int b;
void setup()
{
  size(300,300);
  strokeWeight(20);
  background(r,g,b);
  size(400,400);
}
void draw()
{
	while(endX<400) {
	int r = (int)(Math.random()*256);
	int b = (int)(Math.random()*256);
	int g = (int)(Math.random()*256);
	int light=(int)(Math.random()*256);
	stroke(light);
}

}
void mousePressed()
{

}

