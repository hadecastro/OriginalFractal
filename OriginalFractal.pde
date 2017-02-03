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

public void mouseClicked()
{
	limit = limit*2;
	if(limit > 640)
		limit = 10;
}

public void myFractal(float x, float y, float siz)
{
	ellipse(x, y, siz, siz);
	
	if(siz > limit)
	{
		stroke((int)(mouseX/2), 200, 0);
		myFractal(x+siz/5, y-5, siz/2);
		stroke(100, 200, (int)(mouseX/2));
		myFractal(x-siz/5, y+5, siz/2);
		stroke(255, (int)(mouseY/2), 0);
		myFractal(x-5, y-siz/5, siz/2);
		stroke(200, 200, (int)(mouseY/2));
		myFractal(x+5, y+siz/5, siz/2);
	}
	
}
