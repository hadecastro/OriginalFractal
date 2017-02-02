int limit = 10;
public void setup()
{
	size(500, 500);
	rectMode(CENTER);
}

public void draw()
{
	background(0);
	fill(0);
	stroke((int)(mouseX/2), mouseX, mouseY);	
	myFractal(250, 250, 500);
}
/*
public void mouseClicked()
{
	limit = limit*2
	if(limit >= 200)
}
*/
public void myFractal(float x, float y, float siz)
{
	ellipse(x, y, siz, siz);
	/*
	if(siz > 10)
	{
		stroke(0, 0, 255);
		myFractal(x+siz/1.2, y, siz/2);
		myFractal(x-siz/1.2, y, siz/2);
		stroke(255, 0, 0);
		myFractal(x, y-siz/2, siz/2);
		myFractal(x, y+siz/2, siz/2);
	}
	*/

	
	if(siz > limit)
	{
		stroke((int)(mouseX/2), 200, 0);
		myFractal(x+siz/5, y-10, siz/2);
		stroke(100, 200, (int)(mouseX/2));
		myFractal(x-siz/5, y+10, siz/2);
		stroke(255, (int)(mouseY/2), 0);
		myFractal(x-10, y-siz/5, siz/2);
		stroke(200, 200, (int)(mouseY/2));
		myFractal(x+10, y+siz/5, siz/2);
	}
	
}
