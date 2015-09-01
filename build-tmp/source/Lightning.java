import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Lightning extends PApplet {

int startX=0;
int startY=200;
int endX=0;
int endY=200;
int r;
int g;
int b;
public void setup()
{
  size(300,300);
  strokeWeight(2);
  background(234,43,143);
  size(400,400);
}
public void draw()
{
	while(endX<400) {
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
	mousePressed();
}
public void mousePressed()
{
	int startX=0;
	int startY=200;
	int endX=0;
	int endY=200;
	loop();
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Lightning" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
