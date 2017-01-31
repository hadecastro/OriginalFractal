public void setup()
{
	size(500, 500);
}

public void draw()
{
	background(0);
	fill(0);
	stroke(255, 0, 0);
	myFractal(250, 250, 400);
}

public void myFractal(float x, float y, float siz)
{

/*
	if(siz > 10)
	{
		stroke(0, 0, 255);
		myFractal(x+siz/1.2, y, siz/2);
		myFractal(x-siz/1.2, y, siz/2);
		stroke(255, 0, 0);
		myFractal(x, y-siz/1.2, siz/2);
		myFractal(x, y+siz/1.2, siz/2);
	}
*/	
	ellipse(x, y, siz, siz);

	
	if(siz > 10)
	{
		stroke(255, 200, (int)(Math.random()*255));
		myFractal(x+siz/5, y, siz/2);
		myFractal(x-siz/5, y, siz/2);
		stroke(255, 100, (int)(Math.random()*255));
		myFractal(x, y-siz/5, siz/2);
		myFractal(x, y+siz/5, siz/2);
	}

	

}