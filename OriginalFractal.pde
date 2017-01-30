public void setup()
{
	size(500, 500);
}

public void draw()
{
	background(0);
	fill(0);
	stroke(255, 0, 0);
	myFractal(0, 500, 800);
}

public void myFractal(int x, int y, int siz)
{
	if(siz <= 30)
	{
		ellipse(x, y, siz, siz);
	}
	else
	{
		myFractal(x, y, siz/2);
		myFractal(x + 5, y - 5, siz/2);
	}

}